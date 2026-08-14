import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/quiz/quiz_question.dart';
import '../data/quiz/quiz_registry.dart';
import '../services/game_state.dart';
import '../widgets/answer_card.dart';

// ============================================================
// XP SETTINGS
// ============================================================

const int kXpCorrect = 10;
const int kXpWrongAttempt = 2;

// ============================================================
// QUIZ SCREEN
// ============================================================

class QuizScreen extends StatefulWidget {
  final String moduleId;
  final String moduleTitle;

  const QuizScreen({
    super.key,
    required this.moduleId,
    required this.moduleTitle,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

// ============================================================
// SHUFFLED QUESTION
//
// Keeps the original QuizQuestion but gives it a shuffled
// option list and the new correct answer index.
// ============================================================

class _ShuffledQuestion {
  final QuizQuestion original;
  final List<String> shuffledOptions;
  final int shuffledCorrectIndex;

  const _ShuffledQuestion({
    required this.original,
    required this.shuffledOptions,
    required this.shuffledCorrectIndex,
  });
}

// ============================================================
// QUIZ STATE
// ============================================================

class _QuizScreenState extends State<QuizScreen> with TickerProviderStateMixin {
  // ============================================================
  // QUESTIONS
  // ============================================================

  late List<_ShuffledQuestion> questions;

  // ============================================================
  // CURRENT QUESTION
  // ============================================================

  int currentQuestionIndex = 0;

  int? selectedAnswer;

  bool hasAnswered = false;

  bool quizFinished = false;

  // ============================================================
  // SCORE
  // ============================================================

  int correctAnswers = 0;

  int earnedXp = 0;

  // ============================================================
  // ANIMATION CONTROLLERS
  // ============================================================

  late AnimationController shakeController;

  late AnimationController checkController;

  late ConfettiController confettiController;

  // ============================================================
  // INIT
  // ============================================================

  @override
  void initState() {
    super.initState();

    shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
    );

    checkController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 550),
    );

    confettiController = ConfettiController(
      duration: const Duration(milliseconds: 900),
    );

    _buildShuffledQuestions();
  }

  // ============================================================
  // DISPOSE
  // ============================================================

  @override
  void dispose() {
    shakeController.dispose();
    checkController.dispose();
    confettiController.dispose();

    super.dispose();
  }

  // ============================================================
  // BUILD SHUFFLED QUESTIONS
  //
  // Questions are shuffled.
  // Options inside every question are also shuffled.
  // ============================================================

  void _buildShuffledQuestions() {
    final rawQuestions = quizRegistry[widget.moduleId] ?? [];

    final random = Random();

    // ----------------------------------------------------------
    // Shuffle question order
    // ----------------------------------------------------------

    final shuffledRaw = List<QuizQuestion>.from(rawQuestions)..shuffle(random);

    // ----------------------------------------------------------
    // Shuffle options
    // ----------------------------------------------------------

    questions = shuffledRaw.map((question) {
      final indexedOptions = List.generate(question.options.length, (index) {
        return MapEntry(index, question.options[index]);
      });

      indexedOptions.shuffle(random);

      final shuffledOptions = indexedOptions
          .map((entry) => entry.value)
          .toList();

      final shuffledCorrectIndex = indexedOptions.indexWhere(
        (entry) => entry.key == question.correctAnswer,
      );

      return _ShuffledQuestion(
        original: question,
        shuffledOptions: shuffledOptions,
        shuffledCorrectIndex: shuffledCorrectIndex,
      );
    }).toList();
  }

  // ============================================================
  // CURRENT QUESTION
  // ============================================================

  _ShuffledQuestion? get currentQuestion {
    if (questions.isEmpty) {
      return null;
    }

    if (currentQuestionIndex >= questions.length) {
      return null;
    }

    return questions[currentQuestionIndex];
  }

  // ============================================================
  // SELECT ANSWER
  // ============================================================

  Future<void> selectAnswer(int index) async {
    // Already answered
    if (hasAnswered || quizFinished) {
      return;
    }

    final question = currentQuestion!;

    final bool isCorrect = index == question.shuffledCorrectIndex;

    // ----------------------------------------------------------
    // Update UI immediately
    // ----------------------------------------------------------

    setState(() {
      selectedAnswer = index;

      hasAnswered = true;

      if (isCorrect) {
        correctAnswers++;
      }
    });

    // ----------------------------------------------------------
    // XP
    //
    // Correct = 10 XP
    // Wrong = 2 XP
    // ----------------------------------------------------------

    final int xpAward = isCorrect ? kXpCorrect : kXpWrongAttempt;

    setState(() {
      earnedXp += xpAward;
    });

    // ----------------------------------------------------------
    // Save XP globally
    // ----------------------------------------------------------

    await context.read<GameState>().addXP(xpAward);

    // ----------------------------------------------------------
    // Animations
    // ----------------------------------------------------------

    if (!mounted) {
      return;
    }

    if (isCorrect) {
      checkController.forward(from: 0);

      confettiController.play();
    } else {
      shakeController.forward(from: 0);
    }
  }

  // ============================================================
  // NEXT QUESTION
  // ============================================================

  void nextQuestion() {
    if (!hasAnswered) {
      return;
    }

    // ----------------------------------------------------------
    // Last question
    // ----------------------------------------------------------

    if (currentQuestionIndex == questions.length - 1) {
      _finishQuiz();

      return;
    }

    // ----------------------------------------------------------
    // Next question
    // ----------------------------------------------------------

    setState(() {
      currentQuestionIndex++;

      selectedAnswer = null;

      hasAnswered = false;
    });

    shakeController.reset();

    checkController.reset();
  }

  // ============================================================
  // FINISH QUIZ
  // ============================================================

  Future<void> _finishQuiz() async {
    setState(() {
      quizFinished = true;
    });

    // ----------------------------------------------------------
    // Record module activity
    // ----------------------------------------------------------

    await context.read<GameState>().recordActivity(widget.moduleId);
  }

  // ============================================================
  // RETRY QUIZ
  // ============================================================

  void retryQuiz() {
    setState(() {
      currentQuestionIndex = 0;

      selectedAnswer = null;

      correctAnswers = 0;

      earnedXp = 0;

      hasAnswered = false;

      quizFinished = false;

      // Create a new shuffle
      _buildShuffledQuestions();
    });

    shakeController.reset();

    checkController.reset();
  }

  // ============================================================
  // EXIT QUIZ
  // ============================================================

  void exitQuiz() {
    Navigator.pop(context);
  }

  // ============================================================
  // MAIN BUILD
  // ============================================================

  @override
  Widget build(BuildContext context) {
    // ----------------------------------------------------------
    // No questions
    // ----------------------------------------------------------

    if (questions.isEmpty) {
      return _buildNoQuizScreen();
    }

    // ----------------------------------------------------------
    // Quiz finished
    // ----------------------------------------------------------

    if (quizFinished) {
      return _buildResultScreen();
    }

    // ----------------------------------------------------------
    // Quiz
    // ----------------------------------------------------------

    return _buildQuizScreen();
  }

  // ============================================================
  // NO QUIZ SCREEN
  // ============================================================

  Widget _buildNoQuizScreen() {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),

          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: Text(
          widget.moduleTitle,

          style: const TextStyle(
            color: Color(0xFF202020),
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),

        centerTitle: true,
      ),

      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24),

          child: Text(
            'No quiz questions are available for this module yet.',

            textAlign: TextAlign.center,

            style: TextStyle(fontSize: 16, color: Color(0xFF666666)),
          ),
        ),
      ),
    );
  }

  // ============================================================
  // QUIZ SCREEN
  // ============================================================

  Widget _buildQuizScreen() {
    final question = currentQuestion!;

    final double progress = (currentQuestionIndex + 1) / questions.length;

    final bool isLastQuestion = currentQuestionIndex == questions.length - 1;

    final bool isCorrect =
        hasAnswered && selectedAnswer == question.shuffledCorrectIndex;

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),

      body: SafeArea(
        child: Stack(
          children: [
            // ==================================================
            // MAIN CONTENT
            // ==================================================
            Column(
              children: [
                // ==================================================
                // HEADER
                // ==================================================
                Container(
                  width: double.infinity,

                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 14,
                  ),

                  color: Colors.white,

                  child: Row(
                    children: [
                      // ------------------------------------------------
                      // CLOSE
                      // ------------------------------------------------
                      IconButton(
                        padding: EdgeInsets.zero,

                        constraints: const BoxConstraints(),

                        icon: const Icon(
                          Icons.close,
                          size: 24,
                          color: Colors.black54,
                        ),

                        onPressed: _showExitDialog,
                      ),

                      const SizedBox(width: 16),

                      // ------------------------------------------------
                      // MODULE + QUESTION
                      // ------------------------------------------------
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                              widget.moduleTitle,

                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                              ),

                              overflow: TextOverflow.ellipsis,
                            ),

                            const SizedBox(height: 2),

                            Text(
                              'Question ${currentQuestionIndex + 1} of ${questions.length}',

                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF202020),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // ------------------------------------------------
                      // XP
                      // ------------------------------------------------
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),

                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF3C4),

                          borderRadius: BorderRadius.circular(20),
                        ),

                        child: Row(
                          mainAxisSize: MainAxisSize.min,

                          children: [
                            const Text('🪙', style: TextStyle(fontSize: 13)),

                            const SizedBox(width: 4),

                            Text(
                              '+$earnedXp',

                              style: const TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF8B6914),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // ==================================================
                // PROGRESS
                // ==================================================
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 12,
                  ),

                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Text(
                            'Question ${currentQuestionIndex + 1} of ${questions.length}',

                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF666666),
                            ),
                          ),

                          Text(
                            '$earnedXp XP',

                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF7252B5),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),

                        child: LinearProgressIndicator(
                          value: progress,

                          minHeight: 6,

                          backgroundColor: const Color(0xFFE7DDF7),

                          valueColor: const AlwaysStoppedAnimation<Color>(
                            Color(0xFF7252B5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // ==================================================
                // CONTENT
                // ==================================================
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),

                    padding: const EdgeInsets.fromLTRB(22, 12, 22, 20),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        // ==========================================
                        // QUESTION
                        // ==========================================
                        Text(
                          question.original.question,

                          style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w700,
                            height: 1.35,
                            color: Color(0xFF202020),
                          ),
                        ),

                        const SizedBox(height: 24),

                        // ==========================================
                        // OPTIONS
                        // ==========================================
                        ...List.generate(question.shuffledOptions.length, (
                          index,
                        ) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 12),

                            child: AnswerCard(
                              text: question.shuffledOptions[index],

                              index: index,

                              selectedAnswer: selectedAnswer,

                              correctAnswer: question.shuffledCorrectIndex,

                              answered: hasAnswered,

                              shakeController: shakeController,

                              checkController: checkController,

                              onTap: () {
                                selectAnswer(index);
                              },
                            ),
                          );
                        }),

                        // ==========================================
                        // EXPLANATION
                        // ==========================================
                        if (hasAnswered) ...[
                          const SizedBox(height: 8),

                          _buildExplanation(question, isCorrect),
                        ],

                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),

                // ==================================================
                // NEXT BUTTON
                // ==================================================
                if (hasAnswered)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(22, 8, 22, 18),

                    child: SizedBox(
                      width: double.infinity,
                      height: 62,

                      child: ElevatedButton(
                        onPressed: nextQuestion,

                        style: ElevatedButton.styleFrom(
                          elevation: 0,

                          backgroundColor: const Color(0xFF7252B5),

                          foregroundColor: Colors.white,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                        ),

                        child: Text(
                          isLastQuestion
                              ? 'See Results  →'
                              : 'Next Question  →',

                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),

            // ==================================================
            // CONFETTI
            // ==================================================
            Align(
              alignment: Alignment.topCenter,

              child: ConfettiWidget(
                confettiController: confettiController,

                blastDirection: pi / 2,

                maxBlastForce: 15,

                minBlastForce: 5,

                emissionFrequency: 0.05,

                numberOfParticles: 18,

                gravity: 0.25,

                shouldLoop: false,

                colors: const [
                  Color(0xFF7252B5),

                  Color(0xFF68C96B),

                  Color(0xFFFFC857),

                  Color(0xFFFF7B7B),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // EXPLANATION
  // ============================================================

  Widget _buildExplanation(_ShuffledQuestion question, bool isCorrect) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 350),

      curve: Curves.easeOut,

      child: Container(
        width: double.infinity,

        padding: const EdgeInsets.all(16),

        decoration: BoxDecoration(
          color: isCorrect ? const Color(0xFFEAF7EB) : const Color(0xFFFFF3F3),

          borderRadius: BorderRadius.circular(16),

          border: Border.all(
            color: isCorrect
                ? const Color(0xFF70B875)
                : const Color(0xFFFFD5D5),
          ),
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(isCorrect ? '✅' : '❌', style: const TextStyle(fontSize: 20)),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    isCorrect ? 'Correct!' : 'Not quite!',

                    style: TextStyle(
                      fontSize: 14,

                      fontWeight: FontWeight.bold,

                      color: isCorrect
                          ? const Color(0xFF2E7D32)
                          : const Color(0xFFB71C1C),
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    question.original.explanation,

                    style: const TextStyle(
                      fontSize: 14,
                      height: 1.4,
                      color: Color(0xFF444444),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ============================================================
  // RESULT SCREEN
  // ============================================================

  Widget _buildResultScreen() {
    final double percentage = questions.isEmpty
        ? 0
        : correctAnswers / questions.length;

    String resultTitle;

    String resultMessage;

    if (percentage >= 0.9) {
      resultTitle = 'Excellent! 🎉';

      resultMessage = 'You really know your stuff!';
    } else if (percentage >= 0.7) {
      resultTitle = 'Great Job! 👏';

      resultMessage = 'You have a strong understanding of this topic.';
    } else if (percentage >= 0.5) {
      resultTitle = 'Good Effort! 💪';

      resultMessage = 'Keep practicing and you\'ll improve.';
    } else {
      resultTitle = 'Keep Learning! 📚';

      resultMessage = 'Review the module and try the quiz again.';
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),

      appBar: AppBar(
        backgroundColor: Colors.white,

        elevation: 0,

        automaticallyImplyLeading: false,

        title: Text(
          widget.moduleTitle,

          style: const TextStyle(
            color: Color(0xFF202020),

            fontSize: 18,

            fontWeight: FontWeight.w600,
          ),
        ),

        centerTitle: true,
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),

          padding: const EdgeInsets.all(24),

          child: Column(
            children: [
              const SizedBox(height: 30),

              // ==================================================
              // TROPHY
              // ==================================================
              Container(
                width: 110,
                height: 110,

                decoration: BoxDecoration(
                  color: const Color(0xFFE8DDF7),

                  borderRadius: BorderRadius.circular(35),
                ),

                child: const Icon(
                  Icons.emoji_events,

                  size: 60,

                  color: Color(0xFF7252B5),
                ),
              ),

              const SizedBox(height: 28),

              // ==================================================
              // RESULT TITLE
              // ==================================================
              Text(
                resultTitle,

                textAlign: TextAlign.center,

                style: const TextStyle(
                  fontSize: 30,

                  fontWeight: FontWeight.bold,

                  color: Color(0xFF202020),
                ),
              ),

              const SizedBox(height: 8),

              Text(
                resultMessage,

                textAlign: TextAlign.center,

                style: const TextStyle(fontSize: 16, color: Color(0xFF777777)),
              ),

              const SizedBox(height: 30),

              // ==================================================
              // SCORE CARD
              // ==================================================
              Container(
                width: double.infinity,

                padding: const EdgeInsets.all(22),

                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.circular(22),

                  border: Border.all(color: const Color(0xFFE8E8ED)),
                ),

                child: Column(
                  children: [
                    const Text(
                      'Your Score',

                      style: TextStyle(fontSize: 15, color: Color(0xFF777777)),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      '$correctAnswers / ${questions.length}',

                      style: const TextStyle(
                        fontSize: 38,

                        fontWeight: FontWeight.bold,

                        color: Color(0xFF7252B5),
                      ),
                    ),

                    const SizedBox(height: 18),

                    // ============================================
                    // XP
                    // ============================================
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 10,
                      ),

                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF4CC),

                        borderRadius: BorderRadius.circular(30),
                      ),

                      child: Row(
                        mainAxisSize: MainAxisSize.min,

                        children: [
                          const Icon(
                            Icons.bolt,

                            color: Color(0xFFE5A900),

                            size: 22,
                          ),

                          const SizedBox(width: 6),

                          Text(
                            '+$earnedXp XP',

                            style: const TextStyle(
                              fontSize: 16,

                              fontWeight: FontWeight.bold,

                              color: Color(0xFF9A7000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // ==================================================
              // STATS
              // ==================================================
              Row(
                children: [
                  Expanded(
                    child: _buildStatCard(
                      icon: Icons.check_circle,

                      value: '$correctAnswers',

                      label: 'Correct',

                      color: const Color(0xFF38A169),
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: _buildStatCard(
                      icon: Icons.cancel,

                      value: '${questions.length - correctAnswers}',

                      label: 'Incorrect',

                      color: const Color(0xFFE55353),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // ==================================================
              // TRY AGAIN
              // ==================================================
              SizedBox(
                width: double.infinity,
                height: 58,

                child: ElevatedButton(
                  onPressed: retryQuiz,

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7252B5),

                    foregroundColor: Colors.white,

                    elevation: 0,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),

                  child: const Text(
                    'Try Again',

                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // ==================================================
              // BACK TO MODULE
              // ==================================================
              SizedBox(
                width: double.infinity,
                height: 58,

                child: OutlinedButton(
                  onPressed: exitQuiz,

                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFF7252B5),

                    side: const BorderSide(
                      color: Color(0xFF7252B5),

                      width: 1.5,
                    ),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),

                  child: const Text(
                    'Back to Module',

                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // ============================================================
  // STAT CARD
  // ============================================================

  Widget _buildStatCard({
    required IconData icon,
    required String value,
    required String label,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(18),

        border: Border.all(color: const Color(0xFFE8E8ED)),
      ),

      child: Column(
        children: [
          Icon(icon, size: 28, color: color),

          const SizedBox(height: 8),

          Text(
            value,

            style: TextStyle(
              fontSize: 22,

              fontWeight: FontWeight.bold,

              color: color,
            ),
          ),

          const SizedBox(height: 3),

          Text(
            label,

            style: const TextStyle(fontSize: 13, color: Color(0xFF777777)),
          ),
        ],
      ),
    );
  }

  // ============================================================
  // EXIT DIALOG
  // ============================================================

  void _showExitDialog() {
    showDialog(
      context: context,

      builder: (dialogContext) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          title: const Text(
            'Leave Quiz?',

            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          content: const Text(
            'Your current quiz progress will be lost.',

            style: TextStyle(color: Color(0xFF666666), height: 1.4),
          ),

          actions: [
            // ================================================
            // CANCEL
            // ================================================
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext);
              },

              child: const Text(
                'Cancel',

                style: TextStyle(color: Color(0xFF777777)),
              ),
            ),

            // ================================================
            // LEAVE
            // ================================================
            ElevatedButton(
              onPressed: () {
                Navigator.pop(dialogContext);

                Navigator.pop(context);
              },

              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF7252B5),

                foregroundColor: Colors.white,

                elevation: 0,
              ),

              child: const Text('Leave'),
            ),
          ],
        );
      },
    );
  }
}
