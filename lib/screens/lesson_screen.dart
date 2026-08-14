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

          padding: const EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 20,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // =================================================
              // LESSON PROGRESS
              // =================================================

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

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

                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              ClipRRect(
                borderRadius:
                    BorderRadius.circular(20),

                child: const LinearProgressIndicator(
                  value: 0.2,

                  minHeight: 6,

                  backgroundColor:
                      Color(0xFFE7DDF7),

                  valueColor:
                      AlwaysStoppedAnimation<Color>(
                    Color(0xFF7252B5),
                  ),
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

                    borderRadius:
                        BorderRadius.circular(30),
                  ),

                  child: const Icon(
                    Icons.account_balance_wallet_outlined,

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
                'What is a Budget?',

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
                'A budget is a simple plan for your money. '
                'It helps you decide how much money you can '
                'spend, save, and keep for future needs.',

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

                padding:
                    const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: const Color(0xFFFFF7DF),

                  borderRadius:
                      BorderRadius.circular(20),

                  border: Border.all(
                    color: const Color(0xFFF1E3A8),
                  ),
                ),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [

                    // ===========================================
                    // EXAMPLE TITLE
                    // ===========================================

                    const Row(
                      children: [
                        Text(
                          '💡',

                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),

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
                      'Imagine you receive ₹1,000 pocket money.',

                      style: TextStyle(
                        fontSize: 16,
                        height: 1.4,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      'You could plan your money like this:',

                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 12),

                    // ===========================================
                    // NEEDS
                    // ===========================================

                    _BudgetRow(
                      title: 'Needs',
                      amount: '₹500',
                      icon:
                          Icons.shopping_bag_outlined,
                    ),

                    const SizedBox(height: 8),

                    // ===========================================
                    // WANTS
                    // ===========================================

                    _BudgetRow(
                      title: 'Wants',
                      amount: '₹300',
                      icon:
                          Icons.movie_outlined,
                    ),

                    const SizedBox(height: 8),

                    // ===========================================
                    // SAVINGS
                    // ===========================================

                    _BudgetRow(
                      title: 'Savings',
                      amount: '₹200',
                      icon:
                          Icons.savings_outlined,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // =================================================
              // WHY BUDGET?
              // =================================================

              Container(
                width: double.infinity,

                padding:
                    const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: Colors.white,

                  borderRadius:
                      BorderRadius.circular(18),

                  border: Border.all(
                    color:
                        const Color(0xFFE2E2E2),
                  ),
                ),

                child: const Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [

                    Text(
                      'Why is a budget useful?',

                      style: TextStyle(
                        fontSize: 18,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 12),

                    _BulletPoint(
                      text:
                          'Helps you control your spending',
                    ),

                    _BulletPoint(
                      text:
                          'Helps you save for your goals',
                    ),

                    _BulletPoint(
                      text:
                          'Helps you avoid unnecessary purchases',
                    ),

                    _BulletPoint(
                      text:
                          'Helps you understand where your money goes',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

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
                        builder: (_) =>
                            const QuizScreen(
                              moduleId: 'l1m1',
                              moduleTitle: 'What is a Budget?',
                            ),
                      ),
                    );
                  },

                  style:
                      ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFF7252B5),

                    foregroundColor:
                        Colors.white,

                    elevation: 0,

                    shape:
                        RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(32),
                    ),
                  ),

                  child: const Text(
                    'Start Quiz →',

                    style: TextStyle(
                      fontSize: 17,
                      fontWeight:
                          FontWeight.bold,
                    ),
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
// BUDGET ROW
// =============================================================

class _BudgetRow extends StatelessWidget {
  final String title;
  final String amount;
  final IconData icon;

  const _BudgetRow({
    required this.title,
    required this.amount,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),

      decoration: BoxDecoration(
        color:
            Colors.white.withOpacity(0.75),

        borderRadius:
            BorderRadius.circular(12),
      ),

      child: Row(
        children: [

          Icon(
            icon,

            size: 20,

            color:
                const Color(0xFF7252B5),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Text(
              title,

              style: const TextStyle(
                fontSize: 15,
                fontWeight:
                    FontWeight.w500,
              ),
            ),
          ),

          Text(
            amount,

            style: const TextStyle(
              fontSize: 15,
              fontWeight:
                  FontWeight.bold,
              color:
                  Color(0xFF7252B5),
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

  const _BulletPoint({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(
        bottom: 8,
      ),

      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          const Padding(
            padding:
                EdgeInsets.only(top: 6),

            child: Icon(
              Icons.circle,

              size: 7,

              color:
                  Color(0xFF7252B5),
            ),
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Text(
              text,

              style: const TextStyle(
                fontSize: 15,
                height: 1.4,
                color:
                    Color(0xFF555555),
              ),
            ),
          ),
        ],
      ),
    );
  }
}