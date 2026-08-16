import 'package:flutter/material.dart';

// ============================================================
// APP MODULE MODEL
// ============================================================

class AppModule {
  final String id;
  final String levelId;
  final String title;
  final String subtitle;
  final IconData icon;

  const AppModule({
    required this.id,
    required this.levelId,
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}

// ============================================================
// LEVEL 1 — MONEY FOUNDATIONS
// ============================================================

const List<AppModule> level1Modules = [
  AppModule(
    id: 'l1m1',
    levelId: 'level-1',
    title: 'What is Money?',
    subtitle: 'Why money replaced bartering and how it works',
    icon: Icons.payments_outlined,
  ),
  AppModule(
    id: 'l1m2',
    levelId: 'level-1',
    title: 'Needs vs. Wants',
    subtitle: 'Separate essentials from optional spending',
    icon: Icons.compare_arrows,
  ),
  AppModule(
    id: 'l1m3',
    levelId: 'level-1',
    title: 'Income Streams',
    subtitle: 'Understand earnings, allowances, and gifts',
    icon: Icons.account_balance_wallet_outlined,
  ),
  AppModule(
    id: 'l1m4',
    levelId: 'level-1',
    title: 'Where Money Goes',
    subtitle: 'Understand daily and monthly expenses',
    icon: Icons.money_off_csred_outlined,
  ),
  AppModule(
    id: 'l1m5',
    levelId: 'level-1',
    title: 'The Habit of Saving',
    subtitle: 'Learn why saving early matters',
    icon: Icons.savings_outlined,
  ),
  AppModule(
    id: 'l1m6',
    levelId: 'level-1',
    title: 'Smart Spending',
    subtitle: 'Choose value over impulse purchases',
    icon: Icons.shopping_cart_outlined,
  ),
  AppModule(
    id: 'l1m7',
    levelId: 'level-1',
    title: 'Pocket Money Management',
    subtitle: 'Manage a fixed allowance wisely',
    icon: Icons.currency_rupee,
  ),
  AppModule(
    id: 'l1m8',
    levelId: 'level-1',
    title: 'Introduction to Budgeting',
    subtitle: 'Learn to control your cash flow',
    icon: Icons.account_balance_wallet,
  ),
  AppModule(
    id: 'l1m9',
    levelId: 'level-1',
    title: 'Budget Categories',
    subtitle: 'Organize essentials, personal spending, and savings',
    icon: Icons.category_outlined,
  ),
  AppModule(
    id: 'l1m10',
    levelId: 'level-1',
    title: 'Setting Savings Goals',
    subtitle: 'Set specific targets for what you want',
    icon: Icons.flag_outlined,
  ),
];

// ============================================================
// LEVEL 2 — SAVING & BUDGETING
// ============================================================

const List<AppModule> level2Modules = [
  AppModule(
    id: 'l2m1',
    levelId: 'level-2',
    title: 'The 50-30-20 Rule',
    subtitle: 'A simple framework for dividing income',
    icon: Icons.pie_chart_outline,
  ),
  AppModule(
    id: 'l2m2',
    levelId: 'level-2',
    title: 'Tracking Small Expenses',
    subtitle: 'See how tiny expenses drain your balance',
    icon: Icons.receipt_long_outlined,
  ),
  AppModule(
    id: 'l2m3',
    levelId: 'level-2',
    title: 'Weekly & Monthly Budgets',
    subtitle: 'Plan your cash flow step by step',
    icon: Icons.calendar_month_outlined,
  ),
  AppModule(
    id: 'l2m4',
    levelId: 'level-2',
    title: 'Saving Strategy',
    subtitle: 'Save money before you start spending',
    icon: Icons.savings_outlined,
  ),
  AppModule(
    id: 'l2m5',
    levelId: 'level-2',
    title: 'Goal-Based Saving',
    subtitle: 'Match your savings with your timeline',
    icon: Icons.track_changes,
  ),
  AppModule(
    id: 'l2m6',
    levelId: 'level-2',
    title: 'Emergency Funds',
    subtitle: 'Build cash reserves for unexpected expenses',
    icon: Icons.emergency_outlined,
  ),
  AppModule(
    id: 'l2m7',
    levelId: 'level-2',
    title: 'Overcoming Impulse Buying',
    subtitle: 'Recognize triggers and learn to pause',
    icon: Icons.pause_circle_outline,
  ),
  AppModule(
    id: 'l2m8',
    levelId: 'level-2',
    title: 'Understanding Opportunity Cost',
    subtitle: 'Know what you give up when you spend',
    icon: Icons.swap_horiz,
  ),
  AppModule(
    id: 'l2m9',
    levelId: 'level-2',
    title: 'Fixing Budget Mistakes',
    subtitle: 'Find and correct common budgeting errors',
    icon: Icons.build_circle_outlined,
  ),
  AppModule(
    id: 'l2m10',
    levelId: 'level-2',
    title: 'Practical Saving Challenges',
    subtitle: 'Build consistency through hands-on challenges',
    icon: Icons.emoji_events_outlined,
  ),
];

// ============================================================
// LEVEL 3 — BANKING BASICS
// ============================================================

const List<AppModule> level3Modules = [
  AppModule(
    id: 'l3m1',
    levelId: 'level-3',
    title: 'How Banks Work',
    subtitle: 'Understand deposits, loans, and safekeeping',
    icon: Icons.account_balance,
  ),
  AppModule(
    id: 'l3m2',
    levelId: 'level-3',
    title: 'Savings vs. Current Accounts',
    subtitle: 'Choose the right account for your needs',
    icon: Icons.account_balance_wallet_outlined,
  ),
  AppModule(
    id: 'l3m3',
    levelId: 'level-3',
    title: 'Bank Balances & Transactions',
    subtitle: 'Understand available, ledger, and uncleared balances',
    icon: Icons.account_balance_outlined,
  ),
  AppModule(
    id: 'l3m4',
    levelId: 'level-3',
    title: 'Deposits & Withdrawals',
    subtitle: 'Learn different ways to move money',
    icon: Icons.swap_vert,
  ),
  AppModule(
    id: 'l3m5',
    levelId: 'level-3',
    title: 'ATMs & Debit Cards',
    subtitle: 'Use cards and ATMs safely',
    icon: Icons.credit_card_outlined,
  ),
  AppModule(
    id: 'l3m6',
    levelId: 'level-3',
    title: 'PINs, Passwords & Security',
    subtitle: 'Protect your banking credentials',
    icon: Icons.lock_outline,
  ),
  AppModule(
    id: 'l3m7',
    levelId: 'level-3',
    title: 'Reading Bank Statements',
    subtitle: 'Understand credits, debits, and charges',
    icon: Icons.description_outlined,
  ),
  AppModule(
    id: 'l3m8',
    levelId: 'level-3',
    title: 'Bank Identification Codes',
    subtitle: 'Understand IFSC and payment routing details',
    icon: Icons.qr_code_2,
  ),
  AppModule(
    id: 'l3m9',
    levelId: 'level-3',
    title: 'Simple Interest',
    subtitle: 'Calculate basic interest on savings',
    icon: Icons.calculate_outlined,
  ),
  AppModule(
    id: 'l3m10',
    levelId: 'level-3',
    title: 'Compound Interest',
    subtitle: 'Learn how interest can earn more interest',
    icon: Icons.trending_up,
  ),
];

// ============================================================
// LEVEL 4 — DIGITAL MONEY & SAFETY
// ============================================================

const List<AppModule> level4Modules = [
  AppModule(
    id: 'l4m1',
    levelId: 'level-4',
    title: 'Introduction to UPI',
    subtitle: 'Understand how UPI changed digital payments',
    icon: Icons.phone_android,
  ),
  AppModule(
    id: 'l4m2',
    levelId: 'level-4',
    title: 'UPI Identifiers & QR Codes',
    subtitle: 'Understand handles, numbers, and QR payments',
    icon: Icons.qr_code,
  ),
  AppModule(
    id: 'l4m3',
    levelId: 'level-4',
    title: 'PINs & Authentication',
    subtitle: 'Understand when payment PINs are required',
    icon: Icons.password_outlined,
  ),
  AppModule(
    id: 'l4m4',
    levelId: 'level-4',
    title: 'Checking Payment Confirmations',
    subtitle: 'Verify real payments instead of fake screenshots',
    icon: Icons.verified_outlined,
  ),
  AppModule(
    id: 'l4m5',
    levelId: 'level-4',
    title: 'Handling Failed Transactions',
    subtitle: 'Know what happens when a payment fails',
    icon: Icons.sync_problem_outlined,
  ),
  AppModule(
    id: 'l4m6',
    levelId: 'level-4',
    title: 'OTP Security',
    subtitle: 'Understand why OTPs must stay private',
    icon: Icons.security_outlined,
  ),
  AppModule(
    id: 'l4m7',
    levelId: 'level-4',
    title: 'Identifying Phishing & Fake Links',
    subtitle: 'Spot malicious messages and websites',
    icon: Icons.link_off,
  ),
  AppModule(
    id: 'l4m8',
    levelId: 'level-4',
    title: 'Social Engineering & Fraud Calls',
    subtitle: 'Recognize impersonation and manipulation scams',
    icon: Icons.phone_callback_outlined,
  ),
  AppModule(
    id: 'l4m9',
    levelId: 'level-4',
    title: 'Common QR & Cashback Scams',
    subtitle: 'Recognize fake payment and cashback requests',
    icon: Icons.qr_code_scanner,
  ),
  AppModule(
    id: 'l4m10',
    levelId: 'level-4',
    title: 'Reporting Financial Fraud',
    subtitle: 'Learn what to do after financial fraud',
    icon: Icons.report_problem_outlined,
  ),
];

// ============================================================
// LEVEL 5 — CREDIT & LOANS
// ============================================================

const List<AppModule> level5Modules = [
  AppModule(
    id: 'l5m1',
    levelId: 'level-5',
    title: 'Understanding Borrowing',
    subtitle: 'Learn what happens when you borrow money',
    icon: Icons.handshake_outlined,
  ),
  AppModule(
    id: 'l5m2',
    levelId: 'level-5',
    title: 'Principal & Interest',
    subtitle: 'Understand the cost of borrowing',
    icon: Icons.calculate_outlined,
  ),
  AppModule(
    id: 'l5m3',
    levelId: 'level-5',
    title: 'Equated Monthly Installments (EMI)',
    subtitle: 'Understand how monthly loan payments work',
    icon: Icons.calendar_today_outlined,
  ),
  AppModule(
    id: 'l5m4',
    levelId: 'level-5',
    title: 'Loan Tenure & Total Cost',
    subtitle: 'See how loan duration changes total interest',
    icon: Icons.timeline_outlined,
  ),
  AppModule(
    id: 'l5m5',
    levelId: 'level-5',
    title: 'Credit Cards',
    subtitle: 'Understand revolving credit and billing cycles',
    icon: Icons.credit_card,
  ),
  AppModule(
    id: 'l5m6',
    levelId: 'level-5',
    title: 'Credit Limits & Utilization',
    subtitle: 'Use available credit without overspending',
    icon: Icons.speed_outlined,
  ),
  AppModule(
    id: 'l5m7',
    levelId: 'level-5',
    title: 'The Minimum Payment Trap',
    subtitle: 'Why minimum payments can keep debt growing',
    icon: Icons.warning_amber_outlined,
  ),
  AppModule(
    id: 'l5m8',
    levelId: 'level-5',
    title: 'Credit Scores',
    subtitle: 'Learn what affects your credit score',
    icon: Icons.score_outlined,
  ),
  AppModule(
    id: 'l5m9',
    levelId: 'level-5',
    title: 'Good Debt vs. Bad Debt',
    subtitle: 'Understand productive and costly borrowing',
    icon: Icons.balance_outlined,
  ),
  AppModule(
    id: 'l5m10',
    levelId: 'level-5',
    title: 'Avoiding Debt Traps',
    subtitle: 'Recognize over-borrowing and manage debt responsibly',
    icon: Icons.gpp_bad_outlined,
  ),
];

// ============================================================
// LEVEL 6 — REAL-LIFE PRACTICAL CHALLENGES
// ============================================================

const List<AppModule> level6Modules = [
  AppModule(
    id: 'l6m1',
    levelId: 'level-6',
    title: 'Managing a Fixed Budget',
    subtitle: 'Manage a full week without overspending',
    icon: Icons.account_balance_wallet_outlined,
  ),
  AppModule(
    id: 'l6m2',
    levelId: 'level-6',
    title: 'Planning for a Goal',
    subtitle: 'Create a savings schedule for a target',
    icon: Icons.flag_outlined,
  ),
  AppModule(
    id: 'l6m3',
    levelId: 'level-6',
    title: 'Event Budgeting',
    subtitle: 'Plan expenses for a party, trip, or project',
    icon: Icons.event_outlined,
  ),
  AppModule(
    id: 'l6m4',
    levelId: 'level-6',
    title: 'Comparison Shopping',
    subtitle: 'Compare options to get the best value',
    icon: Icons.compare_outlined,
  ),
  AppModule(
    id: 'l6m5',
    levelId: 'level-6',
    title: 'Identifying Hidden Charges',
    subtitle: 'Spot fees, subscriptions, taxes, and extra costs',
    icon: Icons.receipt_long_outlined,
  ),
  AppModule(
    id: 'l6m6',
    levelId: 'level-6',
    title: 'Online Shopping Decisions',
    subtitle: 'Evaluate discounts, delivery costs, and impulses',
    icon: Icons.shopping_bag_outlined,
  ),
  AppModule(
    id: 'l6m7',
    levelId: 'level-6',
    title: 'Managing Borrowing Requests',
    subtitle: 'Evaluate requests from friends and family',
    icon: Icons.people_outline,
  ),
  AppModule(
    id: 'l6m8',
    levelId: 'level-6',
    title: 'Detecting Fraud Scenarios',
    subtitle: 'Practice spotting real-world scam attempts',
    icon: Icons.security,
  ),
  AppModule(
    id: 'l6m9',
    levelId: 'level-6',
    title: 'Monthly Expense Simulation',
    subtitle: 'Allocate income across bills, savings, and spending',
    icon: Icons.calendar_month_outlined,
  ),
  AppModule(
    id: 'l6m10',
    levelId: 'level-6',
    title: 'Financial Emergency Simulation',
    subtitle: 'Adapt your budget after an unexpected expense',
    icon: Icons.emergency_outlined,
  ),
];

// ============================================================
// LEVEL 7 — INSURANCE & RISK PROTECTION
// ============================================================

const List<AppModule> level7Modules = [
  AppModule(
    id: 'l7m1',
    levelId: 'level-7',
    title: 'Financial Risk & Management',
    subtitle: 'Protect yourself from unexpected financial shocks',
    icon: Icons.shield_outlined,
  ),
  AppModule(
    id: 'l7m2',
    levelId: 'level-7',
    title: 'How Insurance Works',
    subtitle: 'Understand how insurance transfers financial risk',
    icon: Icons.security_outlined,
  ),
  AppModule(
    id: 'l7m3',
    levelId: 'level-7',
    title: 'Premiums vs. Sum Assured',
    subtitle: 'Balance regular payments with protection',
    icon: Icons.account_balance_wallet_outlined,
  ),
  AppModule(
    id: 'l7m4',
    levelId: 'level-7',
    title: 'Health Insurance Essentials',
    subtitle: 'Understand claims, coverage, and network hospitals',
    icon: Icons.health_and_safety_outlined,
  ),
  AppModule(
    id: 'l7m5',
    levelId: 'level-7',
    title: 'Term Life Insurance',
    subtitle: 'Understand pure life protection policies',
    icon: Icons.family_restroom_outlined,
  ),
  AppModule(
    id: 'l7m6',
    levelId: 'level-7',
    title: 'Vehicle & Asset Insurance',
    subtitle: 'Understand vehicle and property protection',
    icon: Icons.directions_car_outlined,
  ),
  AppModule(
    id: 'l7m7',
    levelId: 'level-7',
    title: 'How Claims Work',
    subtitle: 'Learn the process of making an insurance claim',
    icon: Icons.assignment_turned_in_outlined,
  ),
  AppModule(
    id: 'l7m8',
    levelId: 'level-7',
    title: 'Deductibles, Co-Pay & Exclusions',
    subtitle: 'Understand your out-of-pocket insurance costs',
    icon: Icons.description_outlined,
  ),
  AppModule(
    id: 'l7m9',
    levelId: 'level-7',
    title: 'Investment-Insurance Hybrid Traps',
    subtitle: 'Understand the risks of mixing protection and investing',
    icon: Icons.warning_amber_outlined,
  ),
  AppModule(
    id: 'l7m10',
    levelId: 'level-7',
    title: 'Emergency Reserve vs. Insurance',
    subtitle: 'Use savings and insurance together for protection',
    icon: Icons.health_and_safety,
  ),
];

// ============================================================
// LEVEL 8 — BASIC ECONOMICS
// ============================================================

const List<AppModule> level8Modules = [
  AppModule(
    id: 'l8m1',
    levelId: 'level-8',
    title: 'Supply & Demand',
    subtitle: 'Learn how availability and demand affect prices',
    icon: Icons.swap_vert_circle_outlined,
  ),
  AppModule(
    id: 'l8m2',
    levelId: 'level-8',
    title: 'Price Discovery',
    subtitle: 'Understand how buyers and sellers find prices',
    icon: Icons.price_change_outlined,
  ),
  AppModule(
    id: 'l8m3',
    levelId: 'level-8',
    title: 'Inflation',
    subtitle: 'Understand why money loses purchasing power',
    icon: Icons.trending_up,
  ),
  AppModule(
    id: 'l8m4',
    levelId: 'level-8',
    title: 'Deflation & Stagnation',
    subtitle: 'Learn what happens when prices or growth slow',
    icon: Icons.trending_down,
  ),
  AppModule(
    id: 'l8m5',
    levelId: 'level-8',
    title: 'Interest Rates & the Economy',
    subtitle: 'See how rates affect borrowing and saving',
    icon: Icons.percent,
  ),
  AppModule(
    id: 'l8m6',
    levelId: 'level-8',
    title: 'Purchasing Power',
    subtitle: 'Compare real value with nominal rupee amounts',
    icon: Icons.currency_rupee,
  ),
  AppModule(
    id: 'l8m7',
    levelId: 'level-8',
    title: 'Scarcity & Allocation',
    subtitle: 'Understand how limited resources are distributed',
    icon: Icons.inventory_2_outlined,
  ),
  AppModule(
    id: 'l8m8',
    levelId: 'level-8',
    title: 'Opportunity Cost in Markets',
    subtitle: 'Understand economic tradeoffs',
    icon: Icons.compare_arrows,
  ),
  AppModule(
    id: 'l8m9',
    levelId: 'level-8',
    title: 'Economic Growth & Indicators',
    subtitle: 'Learn the basics of GDP and business cycles',
    icon: Icons.show_chart,
  ),
  AppModule(
    id: 'l8m10',
    levelId: 'level-8',
    title: 'Government Taxation & Spending',
    subtitle: 'Understand how taxes fund public services',
    icon: Icons.account_balance,
  ),
];

// ============================================================
// LEVEL 9 — TIME VALUE OF MONEY & MATH OF WEALTH
// ============================================================

const List<AppModule> level9Modules = [
  AppModule(
    id: 'l9m1',
    levelId: 'level-9',
    title: 'Present Value vs. Future Value',
    subtitle: 'Understand why money today can be worth more',
    icon: Icons.schedule_outlined,
  ),
  AppModule(
    id: 'l9m2',
    levelId: 'level-9',
    title: 'Compounding Frequency',
    subtitle: 'Compare monthly, quarterly, and annual compounding',
    icon: Icons.autorenew,
  ),
  AppModule(
    id: 'l9m3',
    levelId: 'level-9',
    title: 'Discounting Cash Flows',
    subtitle: 'Calculate what future money is worth today',
    icon: Icons.discount_outlined,
  ),
  AppModule(
    id: 'l9m4',
    levelId: 'level-9',
    title: 'Inflation-Adjusted Returns',
    subtitle: 'Calculate real returns after inflation',
    icon: Icons.calculate_outlined,
  ),
  AppModule(
    id: 'l9m5',
    levelId: 'level-9',
    title: 'The Rule of 72',
    subtitle: 'Estimate how quickly an investment can double',
    icon: Icons.functions,
  ),
  AppModule(
    id: 'l9m6',
    levelId: 'level-9',
    title: 'Systematic Investment Math',
    subtitle: 'Understand how regular investing builds wealth',
    icon: Icons.trending_up,
  ),
  AppModule(
    id: 'l9m7',
    levelId: 'level-9',
    title: 'Time Horizon Factor',
    subtitle: 'Understand how time affects investment risk',
    icon: Icons.timeline_outlined,
  ),
  AppModule(
    id: 'l9m8',
    levelId: 'level-9',
    title: 'Opportunity Cost Math',
    subtitle: 'Compare potential returns between choices',
    icon: Icons.compare_arrows,
  ),
  AppModule(
    id: 'l9m9',
    levelId: 'level-9',
    title: 'Annuities & Cash Flows',
    subtitle: 'Understand recurring payments and payouts',
    icon: Icons.payments_outlined,
  ),
  AppModule(
    id: 'l9m10',
    levelId: 'level-9',
    title: 'Debt Repayment Math',
    subtitle: 'Compare snowball and avalanche repayment methods',
    icon: Icons.calculate,
  ),
];

// ============================================================
// LEVEL 10 — ACCOUNTING BASICS & STATEMENTS
// ============================================================

const List<AppModule> level10Modules = [
  AppModule(
    id: 'l10m1',
    levelId: 'level-10',
    title: 'Core Accounting Equation',
    subtitle: 'Understand Assets = Liabilities + Equity',
    icon: Icons.functions,
  ),
  AppModule(
    id: 'l10m2',
    levelId: 'level-10',
    title: 'Assets vs. Liabilities',
    subtitle: 'Distinguish what you own from what you owe',
    icon: Icons.balance_outlined,
  ),
  AppModule(
    id: 'l10m3',
    levelId: 'level-10',
    title: 'Income & Expenses',
    subtitle: 'Understand revenue and operating costs',
    icon: Icons.swap_vert,
  ),
  AppModule(
    id: 'l10m4',
    levelId: 'level-10',
    title: 'Profit vs. Cash Flow',
    subtitle: 'Learn why profit does not always mean cash',
    icon: Icons.compare_arrows,
  ),
  AppModule(
    id: 'l10m5',
    levelId: 'level-10',
    title: 'The Balance Sheet',
    subtitle: 'Read a snapshot of assets and liabilities',
    icon: Icons.table_chart_outlined,
  ),
  AppModule(
    id: 'l10m6',
    levelId: 'level-10',
    title: 'The Income Statement (P&L)',
    subtitle: 'Track revenue, costs, and net income',
    icon: Icons.receipt_long_outlined,
  ),
  AppModule(
    id: 'l10m7',
    levelId: 'level-10',
    title: 'The Cash Flow Statement',
    subtitle: 'Track operating, investing, and financing cash',
    icon: Icons.waterfall_chart_outlined,
  ),
  AppModule(
    id: 'l10m8',
    levelId: 'level-10',
    title: 'Accrual vs. Cash Accounting',
    subtitle: 'Understand when revenue and expenses are recognized',
    icon: Icons.sync_alt,
  ),
  AppModule(
    id: 'l10m9',
    levelId: 'level-10',
    title: 'Key Financial Ratios',
    subtitle: 'Use simple checks for financial health',
    icon: Icons.analytics_outlined,
  ),
  AppModule(
    id: 'l10m10',
    levelId: 'level-10',
    title: 'Personal Financial Statements',
    subtitle: 'Build your own net worth and income records',
    icon: Icons.person_outline,
  ),
];

// ============================================================
// LEVEL 11 — INVESTING BASICS & ASSET CLASSES
// ============================================================

const List<AppModule> level11Modules = [
  AppModule(
    id: 'l11m1',
    levelId: 'level-11',
    title: 'Saving vs. Investing',
    subtitle: 'Move from capital preservation to wealth creation',
    icon: Icons.savings_outlined,
  ),
  AppModule(
    id: 'l11m2',
    levelId: 'level-11',
    title: 'Risk and Return',
    subtitle: 'Understand the fundamental investment trade-off',
    icon: Icons.balance_outlined,
  ),
  AppModule(
    id: 'l11m3',
    levelId: 'level-11',
    title: 'Asset Classes Overview',
    subtitle: 'Explore equity, debt, property, gold, and cash',
    icon: Icons.category_outlined,
  ),
  AppModule(
    id: 'l11m4',
    levelId: 'level-11',
    title: 'Diversification',
    subtitle: 'Spread risk across different investments',
    icon: Icons.donut_large_outlined,
  ),
  AppModule(
    id: 'l11m5',
    levelId: 'level-11',
    title: 'Stocks (Equities)',
    subtitle: 'Understand ownership in commercial businesses',
    icon: Icons.show_chart,
  ),
  AppModule(
    id: 'l11m6',
    levelId: 'level-11',
    title: 'Bonds & Debt Securities',
    subtitle: 'Understand lending to governments and companies',
    icon: Icons.account_balance_outlined,
  ),
  AppModule(
    id: 'l11m7',
    levelId: 'level-11',
    title: 'Real Estate & Commodities',
    subtitle: 'Explore property, gold, and physical assets',
    icon: Icons.domain_outlined,
  ),
  AppModule(
    id: 'l11m8',
    levelId: 'level-11',
    title: 'Liquidity',
    subtitle: 'Understand how quickly assets become cash',
    icon: Icons.water_drop_outlined,
  ),
  AppModule(
    id: 'l11m9',
    levelId: 'level-11',
    title: 'Market Volatility',
    subtitle: 'Understand why investment values fluctuate',
    icon: Icons.candlestick_chart_outlined,
  ),
  AppModule(
    id: 'l11m10',
    levelId: 'level-11',
    title: 'Spotting Investment Fraud',
    subtitle: 'Recognize unrealistic returns and investment scams',
    icon: Icons.gpp_bad_outlined,
  ),
];

// ============================================================
// ALL LEVELS
// ============================================================

const List<List<AppModule>> allLevelModules = [
  level1Modules,
  level2Modules,
  level3Modules,
  level4Modules,
  level5Modules,
  level6Modules,
  level7Modules,
  level8Modules,
  level9Modules,
  level10Modules,
  level11Modules,
];

// ============================================================
// HELPERS
// ============================================================

List<AppModule> getModulesForLevel(String levelId) {
  switch (levelId) {
    case 'level-1':
      return level1Modules;
    case 'level-2':
      return level2Modules;
    case 'level-3':
      return level3Modules;
    case 'level-4':
      return level4Modules;
    case 'level-5':
      return level5Modules;
    case 'level-6':
      return level6Modules;
    case 'level-7':
      return level7Modules;
    case 'level-8':
      return level8Modules;
    case 'level-9':
      return level9Modules;
    case 'level-10':
      return level10Modules;
    case 'level-11':
      return level11Modules;
    default:
      return [];
  }
}
