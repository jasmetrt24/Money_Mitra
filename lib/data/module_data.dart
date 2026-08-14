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
// LEVEL 1 — 10 MODULES (existing structure preserved)
// Module 1 = the existing LessonScreen ("What is a Budget?")
// ============================================================

const List<AppModule> level1Modules = [
  AppModule(
    id: 'l1m1',
    levelId: 'level-1',
    title: 'What is a Budget?',
    subtitle: 'Plan your money, control your life',
    icon: Icons.account_balance_wallet_outlined,
  ),
  AppModule(
    id: 'l1m2',
    levelId: 'level-1',
    title: 'Needs vs Wants',
    subtitle: 'Spend smart, not fast',
    icon: Icons.compare_arrows,
  ),
  AppModule(
    id: 'l1m3',
    levelId: 'level-1',
    title: 'Saving Habits',
    subtitle: 'Small savings, big dreams',
    icon: Icons.savings_outlined,
  ),
  AppModule(
    id: 'l1m4',
    levelId: 'level-1',
    title: 'Income & Expenses',
    subtitle: 'Track what comes in and goes out',
    icon: Icons.sync_alt,
  ),
  AppModule(
    id: 'l1m5',
    levelId: 'level-1',
    title: 'Goal Setting',
    subtitle: 'Save with purpose',
    icon: Icons.flag_outlined,
  ),
  AppModule(
    id: 'l1m6',
    levelId: 'level-1',
    title: 'Pocket Money Planning',
    subtitle: 'Make every rupee count',
    icon: Icons.currency_rupee,
  ),
  AppModule(
    id: 'l1m7',
    levelId: 'level-1',
    title: 'Smart Shopping',
    subtitle: 'Buy what you need, skip what you don\'t',
    icon: Icons.shopping_cart_outlined,
  ),
  AppModule(
    id: 'l1m8',
    levelId: 'level-1',
    title: 'Sharing & Giving',
    subtitle: 'Generosity is part of financial health',
    icon: Icons.favorite_border,
  ),
  AppModule(
    id: 'l1m9',
    levelId: 'level-1',
    title: 'Money & Time',
    subtitle: 'Why waiting pays off',
    icon: Icons.access_time,
  ),
  AppModule(
    id: 'l1m10',
    levelId: 'level-1',
    title: 'Building Good Habits',
    subtitle: 'Routines that make you rich',
    icon: Icons.check_circle_outline,
  ),
];

// ============================================================
// LEVEL 2 — 10 MODULES
// ============================================================

const List<AppModule> level2Modules = [
  AppModule(
    id: 'l2m1',
    levelId: 'level-2',
    title: 'Banking Basics',
    subtitle: 'Savings vs current accounts',
    icon: Icons.account_balance,
  ),
  AppModule(
    id: 'l2m2',
    levelId: 'level-2',
    title: 'UPI & Digital Payments',
    subtitle: 'Pay smart, pay safe with UPI',
    icon: Icons.phone_android,
  ),
  AppModule(
    id: 'l2m3',
    levelId: 'level-2',
    title: 'Spotting Online Scams',
    subtitle: 'Don\'t fall for fraud',
    icon: Icons.security,
  ),
  AppModule(
    id: 'l2m4',
    levelId: 'level-2',
    title: 'Budgeting Apps & Tracking',
    subtitle: 'Digital tools for your money',
    icon: Icons.bar_chart,
  ),
  AppModule(
    id: 'l2m5',
    levelId: 'level-2',
    title: 'Credit vs Debit',
    subtitle: 'How each card really works',
    icon: Icons.credit_card,
  ),
  AppModule(
    id: 'l2m6',
    levelId: 'level-2',
    title: 'The EMI Trap',
    subtitle: 'Hidden costs of "easy" payments',
    icon: Icons.warning_amber_outlined,
  ),
  AppModule(
    id: 'l2m7',
    levelId: 'level-2',
    title: 'Saving vs Investing',
    subtitle: 'What\'s the difference?',
    icon: Icons.trending_up,
  ),
  AppModule(
    id: 'l2m8',
    levelId: 'level-2',
    title: 'SIP, RD & PPF',
    subtitle: 'Your first investment options',
    icon: Icons.show_chart,
  ),
  AppModule(
    id: 'l2m9',
    levelId: 'level-2',
    title: 'Setting a Financial Goal',
    subtitle: 'Save for that phone or trip!',
    icon: Icons.emoji_events_outlined,
  ),
  AppModule(
    id: 'l2m10',
    levelId: 'level-2',
    title: 'Basic Tax Awareness',
    subtitle: 'Why your payslip has deductions',
    icon: Icons.receipt_long_outlined,
  ),
];

// ============================================================
// HELPERS
// ============================================================

List<AppModule> getModulesForLevel(String levelId) {
  if (levelId == 'level-1') return level1Modules;
  if (levelId == 'level-2') return level2Modules;
  return [];
}
