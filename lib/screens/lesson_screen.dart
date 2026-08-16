import 'package:flutter/material.dart';
import 'quiz_screen.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),

      // =====================================================
      // APP BAR
      // =====================================================
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF8FF),
        elevation: 0,
        scrolledUnderElevation: 0,

        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            size: 22,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        title: const Text(
          'Lesson',
          style: TextStyle(
            color: Colors.black,
            fontSize: 21,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),

      // =====================================================
      // BODY
      // =====================================================
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // =================================================
              // LESSON PROGRESS
              // =================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Lesson 1',
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF7252B5),
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  Text(
                    '1 of 5',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              ClipRRect(
                borderRadius: BorderRadius.circular(20),

                child: const LinearProgressIndicator(
                  value: 0.2,
                  minHeight: 6,
                  backgroundColor: Color(0xFFE7DDF7),
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF7252B5)),
                ),
              ),

              const SizedBox(height: 32),

              // =================================================
              // LESSON ICON
              // =================================================
              Center(
                child: Container(
                  width: 105,
                  height: 105,

                  decoration: BoxDecoration(
                    color: const Color(0xFFE8DDF7),
                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: const Icon(
                    Icons.payments_outlined,
                    size: 55,
                    color: Color(0xFF7252B5),
                  ),
                ),
              ),

              const SizedBox(height: 28),

              // =================================================
              // TITLE
              // =================================================
              const Text(
                'What is Money?',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF202020),
                ),
              ),

              const SizedBox(height: 15),

              // =================================================
              // DESCRIPTION
              // =================================================
              const Text(
                'Money is something people use to buy goods and '
                'services, save for the future, and exchange value. '
                'It makes everyday transactions easier than trading '
                'one item directly for another.',

                style: TextStyle(
                  fontSize: 17,
                  height: 1.5,
                  color: Color(0xFF444444),
                ),
              ),

              const SizedBox(height: 24),

              // =================================================
              // EXAMPLE CARD
              // =================================================
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: const Color(0xFFFFF7DF),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xFFF1E3A8)),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    // ===========================================
                    // EXAMPLE TITLE
                    // ===========================================
                    const Row(
                      children: [
                        Text('💡', style: TextStyle(fontSize: 22)),

                        SizedBox(width: 8),

                        Text(
                          'Example',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    const Text(
                      'Imagine you have a notebook, but you want '
                      'to buy a snack from a shop.',

                      style: TextStyle(fontSize: 16, height: 1.4),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'Instead of finding someone who wants your '
                      'notebook and has a snack to exchange, you '
                      'can use money to buy the snack.',

                      style: TextStyle(fontSize: 16, height: 1.4),
                    ),

                    const SizedBox(height: 16),

                    _MoneyRow(
                      title: 'Earn',
                      description: 'Get money from work or other sources',
                      icon: Icons.work_outline,
                    ),

                    const SizedBox(height: 8),

                    _MoneyRow(
                      title: 'Spend',
                      description: 'Use money to buy goods and services',
                      icon: Icons.shopping_bag_outlined,
                    ),

                    const SizedBox(height: 8),

                    _MoneyRow(
                      title: 'Save',
                      description: 'Keep money for future needs and goals',
                      icon: Icons.savings_outlined,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // =================================================
              // WHY DO WE NEED MONEY?
              // =================================================
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),

                  border: Border.all(color: const Color(0xFFE2E2E2)),
                ),

                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(
                      'Why do we need money?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 12),

                    _BulletPoint(text: 'Money makes buying and selling easier'),

                    _BulletPoint(
                      text: 'Money gives us a common way to measure value',
                    ),

                    _BulletPoint(text: 'Money can be saved for future needs'),

                    _BulletPoint(
                      text: 'Money helps businesses and people exchange value',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // =================================================
              // KEY IDEA CARD
              // =================================================
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: const Color(0xFFF0EAFB),
                  borderRadius: BorderRadius.circular(18),

                  border: Border.all(color: const Color(0xFFDCCEF3)),
                ),

                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Icon(
                      Icons.lightbulb_outline,
                      color: Color(0xFF7252B5),
                      size: 26,
                    ),

                    SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Text(
                            'Key Idea',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF7252B5),
                            ),
                          ),

                          SizedBox(height: 6),

                          Text(
                            'Money is a tool. The important part is '
                            'learning how to use that tool wisely.',
                            style: TextStyle(
                              fontSize: 15,
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

              const SizedBox(height: 28),

              // =================================================
              // START QUIZ BUTTON
              // =================================================
              SizedBox(
                width: double.infinity,
                height: 62,

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,

                      MaterialPageRoute(
                        builder: (_) => const QuizScreen(
                          moduleId: 'l1m1',
                          moduleTitle: 'What is Money?',
                        ),
                      ),
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7252B5),
                    foregroundColor: Colors.white,
                    elevation: 0,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),

                  child: const Text(
                    'Start Quiz →',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
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

// =============================================================
// MONEY ROW
// =============================================================

class _MoneyRow extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;

  const _MoneyRow({
    required this.title,
    required this.description,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 11),

      decoration: BoxDecoration(
        // Updated Flutter API:
        // withOpacity() is deprecated.
        color: Colors.white.withValues(alpha: 0.75),

        borderRadius: BorderRadius.circular(12),
      ),

      child: Row(
        children: [
          Container(
            width: 38,
            height: 38,

            decoration: BoxDecoration(
              color: const Color(0xFFE8DDF7),
              borderRadius: BorderRadius.circular(10),
            ),

            child: Icon(icon, size: 20, color: const Color(0xFF7252B5)),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                const SizedBox(height: 2),

                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF666666),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// =============================================================
// BULLET POINT
// =============================================================

class _BulletPoint extends StatelessWidget {
  final String text;

  const _BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          const Padding(
            padding: EdgeInsets.only(top: 6),

            child: Icon(Icons.circle, size: 7, color: Color(0xFF7252B5)),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 15,
                height: 1.4,
                color: Color(0xFF555555),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
