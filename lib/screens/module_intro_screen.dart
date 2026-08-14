import 'package:flutter/material.dart';

import '../data/module_data.dart';
import 'quiz_screen.dart';

// ============================================================
// MODULE INTRO SCREEN
// Generic intro screen for the 19 non-L1M1 modules.
// Shows the module topic with key points, then leads to quiz.
// ============================================================

class ModuleIntroScreen extends StatelessWidget {
  final AppModule module;

  const ModuleIntroScreen({super.key, required this.module});

  @override
  Widget build(BuildContext context) {
    final intro = _moduleIntros[module.id] ?? _defaultIntro(module);

    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          module.title,
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
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ============================================
              // ICON
              // ============================================
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE8DDF7),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Icon(
                    module.icon,
                    size: 50,
                    color: const Color(0xFF7252B5),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // ============================================
              // TITLE
              // ============================================
              Text(
                module.title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF202020),
                ),
              ),

              const SizedBox(height: 8),

              Text(
                module.subtitle,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF888888),
                ),
              ),

              const SizedBox(height: 24),

              // ============================================
              // INTRO TEXT
              // ============================================
              Text(
                intro.description,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.55,
                  color: Color(0xFF444444),
                ),
              ),

              const SizedBox(height: 22),

              // ============================================
              // KEY POINTS
              // ============================================
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF7DF),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: const Color(0xFFF1E3A8)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Text('💡', style: TextStyle(fontSize: 20)),
                        SizedBox(width: 8),
                        Text(
                          'What you\'ll learn',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ...intro.keyPoints.map(
                      (point) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 6),
                              child: Icon(
                                Icons.circle,
                                size: 7,
                                color: Color(0xFF7252B5),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                point,
                                style: const TextStyle(
                                  fontSize: 14,
                                  height: 1.4,
                                  color: Color(0xFF555555),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 28),

              // ============================================
              // START QUIZ BUTTON
              // ============================================
              SizedBox(
                width: double.infinity,
                height: 62,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => QuizScreen(
                          moduleId: module.id,
                          moduleTitle: module.title,
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
                    'Start Quiz  →',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // XP info
              Center(
                child: Text(
                  'Earn up to 100 XP · 10 questions',
                  style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                ),
              ),

              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// INTRO DATA MODEL
// ============================================================

class _ModuleIntro {
  final String description;
  final List<String> keyPoints;
  const _ModuleIntro({required this.description, required this.keyPoints});
}

_ModuleIntro _defaultIntro(AppModule module) => _ModuleIntro(
  description:
      'In this module you will explore ${module.title.toLowerCase()} '
      'through 10 beginner-friendly questions with real Indian examples.',
  keyPoints: [
    'Understand the core concept with practical examples',
    'Apply knowledge to everyday money decisions',
    'Earn XP for every question you answer',
  ],
);

// ============================================================
// MODULE INTRO DATA MAP
// ============================================================

const Map<String, _ModuleIntro> _moduleIntros = {
  // Level 1
  'l1m2': _ModuleIntro(
    description:
        'Every rupee you spend falls into one of two buckets — a NEED or a WANT. '
        'Learning to tell them apart is the single most important skill for managing pocket money. '
        'Once you can separate them, you\'ll never be broke before the month ends.',
    keyPoints: [
      'Distinguish between needs (essentials) and wants (nice-to-haves)',
      'Use the "Can I survive without this?" test',
      'Apply the 24-hour rule before buying wants',
      'Understand how impulse buying drains your budget',
    ],
  ),
  'l1m3': _ModuleIntro(
    description:
        'Saving isn\'t about having less fun — it\'s about having MORE options in the future. '
        'A small, consistent saving habit started today can grow into thousands of rupees by the time you need it. '
        'This module will show you how to make saving automatic and painless.',
    keyPoints: [
      'Use the "Pay Yourself First" principle',
      'Set up consistent weekly or monthly saving targets',
      'Understand the power of compounding on savings',
      'Build an emergency fund as your financial safety net',
    ],
  ),
  'l1m4': _ModuleIntro(
    description:
        'Income is money that comes IN, expenses are money that goes OUT. '
        'When you track both consistently, you gain a clear picture of where your money is actually going — '
        'and that visibility is what makes every other financial decision smarter.',
    keyPoints: [
      'Classify income vs expenses accurately',
      'Understand fixed vs variable expenses',
      'Track every rupee — even small ones',
      'Identify and fix money leaks in your spending',
    ],
  ),
  'l1m5': _ModuleIntro(
    description:
        'Whether it\'s a new phone, a school trip to Manali, or a birthday gift for your best friend — '
        'every goal is achievable when you break it down into monthly savings targets. '
        'This module teaches you how to set goals that you will actually reach.',
    keyPoints: [
      'Define SMART financial goals (Specific, Measurable, Achievable, Relevant, Time-bound)',
      'Distinguish short-term vs long-term goals',
      'Calculate monthly savings targets from a goal amount',
      'Handle setbacks without abandoning the goal',
    ],
  ),
  'l1m6': _ModuleIntro(
    description:
        'Pocket money is your first real experience managing money. '
        'How you handle ₹500 today is a practice run for how you\'ll handle ₹50,000 tomorrow. '
        'This module helps you plan, track, and stretch every rupee of pocket money.',
    keyPoints: [
      'Apply the 50-30-20 rule to pocket money',
      'Spot and plug money leaks (small daily expenses)',
      'Plan spending in advance to avoid running out midweek',
      'Build the habit of checking your balance regularly',
    ],
  ),
  'l1m7': _ModuleIntro(
    description:
        'Smart shoppers get the same things as impulsive shoppers — but spend significantly less. '
        'Learning to compare prices, evaluate value, and resist marketing tricks gives you an unfair advantage '
        'every time you open your wallet.',
    keyPoints: [
      'Compare prices across shops and online platforms before buying',
      'Calculate "per-use cost" to find true value',
      'Identify and resist impulse buying triggers',
      'Read discounts and sale offers critically',
    ],
  ),
  'l1m8': _ModuleIntro(
    description:
        'Money and relationships go hand-in-hand. Whether it\'s splitting a dinner bill, '
        'contributing to a birthday gift, or deciding when to lend money to a friend — '
        'knowing how to handle money in social situations is a critical life skill.',
    keyPoints: [
      'Split bills fairly using simple math',
      'Set healthy financial boundaries with friends',
      'Include a small "giving" category in your budget',
      'Decide when (and how much) to lend to friends',
    ],
  ),
  'l1m9': _ModuleIntro(
    description:
        'Time is your greatest financial superpower. A ₹500 investment made at age 15 '
        'can be worth much more at 30 than a ₹5,000 investment made at 25 — '
        'that\'s the magic of compound interest. This module will change how you think about waiting.',
    keyPoints: [
      'Understand simple vs compound interest with Indian examples',
      'Apply the Rule of 72 to estimate doubling time',
      'Understand how inflation erodes purchasing power',
      'See why starting to save early creates massive long-term wealth',
    ],
  ),
  'l1m10': _ModuleIntro(
    description:
        'Financial knowledge is only useful if it turns into daily habits. '
        'This final Level 1 module brings everything together — from mindset to routines — '
        'so you leave with a practical daily system for managing money for the rest of your life.',
    keyPoints: [
      'Build a daily money-awareness habit',
      'Do monthly financial reviews to stay on track',
      'Develop a "growth mindset" around money',
      'Identify the one habit that has the biggest long-term impact',
    ],
  ),

  // Level 2
  'l2m1': _ModuleIntro(
    description:
        'A bank is your money\'s safe home. But not all accounts are the same — '
        'savings accounts earn interest while current accounts serve businesses. '
        'Understanding banking basics means you\'ll never be confused about where to keep your money.',
    keyPoints: [
      'Differences between savings and current accounts',
      'How bank interest works on deposits',
      'What KYC documents are needed to open an account',
      'How to use ATMs, net banking, and passbooks safely',
    ],
  ),
  'l2m2': _ModuleIntro(
    description:
        'UPI has transformed how India pays. From ₹10 chai to ₹10,000 transfers, '
        'it\'s instant, free, and available to anyone with a smartphone. '
        'This module teaches you to use UPI confidently and safely.',
    keyPoints: [
      'How UPI works and which apps use it (GPay, PhonePe, Paytm)',
      'Creating and using a UPI ID safely',
      'Protecting your UPI PIN — the golden rule',
      'What to do if you accidentally pay the wrong person',
    ],
  ),
  'l2m3': _ModuleIntro(
    description:
        'Online scammers specifically target teenagers because they assume you\'ll trust easily. '
        'Learning to recognize fraud patterns — OTP requests, fake lottery wins, collect requests — '
        'is one of the most valuable skills you can have in the digital age.',
    keyPoints: [
      'Identify phishing messages and fake "you\'ve won" scams',
      'Never share OTPs, PINs, or account details with anyone',
      'Recognize UPI collect request scams',
      'Report fraud to cybercrime.gov.in or call 1930',
    ],
  ),
  'l2m4': _ModuleIntro(
    description:
        'What gets measured gets managed. Budgeting apps and tracking tools make it '
        'effortless to see where your money goes, set limits, and get alerts before you overspend. '
        'This module helps you pick the right tool and use it effectively.',
    keyPoints: [
      'Explore Indian budgeting apps (Walnut, Money Manager)',
      'Understand expense categories and spending reports',
      'Set budget alerts to prevent overspending',
      'Use zero-based budgeting for complete control',
    ],
  ),
  'l2m5': _ModuleIntro(
    description:
        'Debit and credit cards look identical but work very differently. '
        'One uses money you have; the other borrows money you must repay — often with steep interest. '
        'Understanding the difference could save you thousands of rupees in unnecessary charges.',
    keyPoints: [
      'How debit cards draw from your actual balance',
      'How credit cards work as short-term loans',
      'Why credit card interest (36–42% p.a.) is dangerous',
      'How responsible credit card use builds a CIBIL score',
    ],
  ),
  'l2m6': _ModuleIntro(
    description:
        'EMIs make expensive things seem affordable by splitting the cost into small monthly payments. '
        'But there\'s always a price — interest, processing fees, and the psychological burden of ongoing debt. '
        'This module teaches you to see through the "easy payment" illusion.',
    keyPoints: [
      'Calculate the true cost of any EMI (total payments vs cash price)',
      'Spot the hidden costs in "No Cost EMI" offers',
      'Understand the debt trap and how to avoid it',
      'Know when an EMI is acceptable vs when to save up instead',
    ],
  ),
  'l2m7': _ModuleIntro(
    description:
        'Saving is keeping money safe. Investing is putting money to work. '
        'Both are important — but for different goals and time horizons. '
        'Understanding when to save and when to invest is the key to building real wealth.',
    keyPoints: [
      'When saving (bank account) is the right choice',
      'When investing (mutual funds, etc.) makes more sense',
      'What "risk and return" means in practice',
      'Why starting to invest early is life-changing',
    ],
  ),
  'l2m8': _ModuleIntro(
    description:
        'SIPs, RDs, and PPF are India\'s three most beginner-friendly investment and savings tools. '
        'Together, they cover short-term, medium-term, and long-term goals with varying risk levels. '
        'This module gives you a clear, simple introduction to all three.',
    keyPoints: [
      'How SIPs (Systematic Investment Plans) work and their advantages',
      'How Recurring Deposits (RDs) guarantee safe returns',
      'What PPF (Public Provident Fund) offers for long-term goals',
      'Which tool to use for which type of goal',
    ],
  ),
  'l2m9': _ModuleIntro(
    description:
        'Every financial journey starts with a destination. Whether you\'re saving for a new phone, '
        'a trip to Goa with friends, or college fees — the process of setting, tracking, and achieving '
        'a financial goal is the same. This module walks you through it step by step.',
    keyPoints: [
      'Turn vague wishes into SMART financial goals',
      'Calculate exact monthly savings needed for any goal',
      'Set up a "sinking fund" for each goal',
      'Handle setbacks without abandoning the goal',
    ],
  ),
  'l2m10': _ModuleIntro(
    description:
        'When you land your first job and receive your first payslip, don\'t be shocked by the deductions. '
        'TDS, PF, and professional tax are all explained here — along with why GST is added to '
        'almost everything you buy. This is your beginner\'s guide to the Indian tax system.',
    keyPoints: [
      'What income tax is and who pays it in India',
      'Reading your payslip: gross salary vs take-home pay',
      'What TDS, PF, and professional tax deductions mean',
      'How GST is applied to goods and services you buy daily',
    ],
  ),
};
