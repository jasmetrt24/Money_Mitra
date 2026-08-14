import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'quiz_screen.dart';

// ============================================================
// RESULT SCREEN
// Shows score, XP earned this attempt, and Retry button.
// ============================================================

class ResultScreen extends StatelessWidget {
  final String moduleId;
  final String moduleTitle;
  final int score;
  final int total;
  final int xpEarned;

  const ResultScreen({
    super.key,
    required this.moduleId,
    required this.moduleTitle,
    required this.score,
    required this.total,
    required this.xpEarned,
  });

  @override
  Widget build(BuildContext context) {
    final double percentage = total == 0 ? 0 : score / total;

    String message;
    String emoji;
    Color accentColor;

    if (percentage == 1.0) {
      message = 'Perfect score! You\'re a MoneyMitra champion!';
      emoji = '🏆';
      accentColor = const Color(0xFFE4A900);
    } else if (percentage >= 0.7) {
      message = 'Bahut badhiya! Great understanding — keep it up!';
      emoji = '⭐';
      accentColor = const Color(0xFF7252B5);
    } else if (percentage >= 0.4) {
      message = 'Good effort! Review the module and try again.';
      emoji = '💪';
      accentColor = const Color(0xFF4CAF50);
    } else {
      message = 'Don\'t worry! Every expert was once a beginner. Retry!';
      emoji = '🌱';
      accentColor = const Color(0xFF2196F3);
    }

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              const SizedBox(height: 24),

              // ============================================
              // EMOJI ICON
              // ============================================
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: accentColor.withOpacity(0.12),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(emoji, style: const TextStyle(fontSize: 58)),
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                'Quiz Complete!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF202020),
                ),
              ),

              const SizedBox(height: 8),

              Text(
                moduleTitle,
                style: const TextStyle(fontSize: 15, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 16),

              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF555555),
                  height: 1.4,
                ),
              ),

              const SizedBox(height: 28),

              // ============================================
              // SCORE CARD
              // ============================================
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: const Color(0xFFE0E0E0)),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Your Score',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '$score / $total',
                      style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: accentColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${(percentage * 100).round()}%',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF888888),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Progress bar
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: percentage,
                        minHeight: 8,
                        backgroundColor: const Color(0xFFF0EDF7),
                        valueColor: AlwaysStoppedAnimation<Color>(accentColor),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // ============================================
              // XP EARNED THIS ATTEMPT
              // ============================================
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFFFF8DC), Color(0xFFFFF3C4)],
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: const Color(0xFFF0DC80)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('🪙', style: TextStyle(fontSize: 22)),
                    const SizedBox(width: 10),
                    Text(
                      '+$xpEarned XP Earned!',
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF8B6914),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              // XP breakdown hint
              Text(
                '${score > 0 ? score : 0} correct (×$kXpCorrect XP each) · ${total - score} attempted (× XP each)',
                style: const TextStyle(fontSize: 12, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 28),

              // ============================================
              // CONTINUE BUTTON
              // ============================================
              SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const HomeScreen()),
                      (route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7252B5),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Continue Learning  →',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // ============================================
              // RETRY BUTTON
              // ============================================
              SizedBox(
                width: double.infinity,
                height: 54,
                child: OutlinedButton(
                  onPressed: () {
                    // Replace current result screen with a fresh quiz attempt
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => QuizScreen(
                          moduleId: moduleId,
                          moduleTitle: moduleTitle,
                        ),
                      ),
                    );
                  },
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
                    'Retry Quiz',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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
}
