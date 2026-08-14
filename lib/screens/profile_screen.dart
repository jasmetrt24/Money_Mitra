import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/game_state.dart';

// ============================================================
// PROFILE SCREEN — placeholder
// ============================================================

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GameState>(
      builder: (context, gameState, _) {
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
              onPressed: () => Navigator.pop(context),
            ),
            title: const Text(
              'My Profile',
              style: TextStyle(
                color: Color(0xFF202020),
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
          ),

          body: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(height: 20),

                // ============================================
                // AVATAR
                // ============================================
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      colors: [Color(0xFF7252B5), Color(0xFF9675D1)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF7252B5).withOpacity(0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 52,
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  'Money Learner',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF202020),
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  'MoneyMitra Student',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade500,
                  ),
                ),

                const SizedBox(height: 32),

                // ============================================
                // STATS ROW
                // ============================================
                Row(
                  children: [
                    Expanded(
                      child: _StatCard(
                        emoji: '🪙',
                        value: '${gameState.totalXP}',
                        label: 'Total XP',
                        color: const Color(0xFFFFF3C4),
                        textColor: const Color(0xFF8B6914),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _StatCard(
                        emoji: '🔥',
                        value: '${gameState.currentStreak}',
                        label: 'Day Streak',
                        color: const Color(0xFFFFECE0),
                        textColor: const Color(0xFFB84A00),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _StatCard(
                        emoji: '✅',
                        value: '${gameState.completedModules.length}',
                        label: 'Modules Done',
                        color: const Color(0xFFE8F6E9),
                        textColor: const Color(0xFF2E7D32),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 28),

                // ============================================
                // LEVEL PROGRESS
                // ============================================
                _SectionCard(
                  title: 'Learning Progress',
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _ProgressRow(
                        label: 'Level 1 — Money Fundamentals',
                        completed: gameState.completedModules
                            .where((id) => id.startsWith('l1'))
                            .length,
                        total: 10,
                        color: const Color(0xFF7252B5),
                      ),
                      const SizedBox(height: 16),
                      _ProgressRow(
                        label: 'Level 2 — Banking & Investing',
                        completed: gameState.completedModules
                            .where((id) => id.startsWith('l2'))
                            .length,
                        total: 10,
                        color: const Color(0xFF4CAF50),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // ============================================
                // BADGES / ACHIEVEMENTS (placeholder)
                // ============================================
                _SectionCard(
                  title: 'Badges',
                  child: Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      _Badge(
                        emoji: '🌱',
                        label: 'Beginner',
                        unlocked: gameState.totalXP >= 10,
                      ),
                      _Badge(
                        emoji: '💡',
                        label: 'Curious',
                        unlocked: gameState.completedModules.isNotEmpty,
                      ),
                      _Badge(
                        emoji: '🏆',
                        label: 'Achiever',
                        unlocked: gameState.completedModules.length >= 5,
                      ),
                      _Badge(
                        emoji: '🔥',
                        label: 'On Fire',
                        unlocked: gameState.currentStreak >= 3,
                      ),
                      _Badge(
                        emoji: '⭐',
                        label: 'Star',
                        unlocked: gameState.totalXP >= 500,
                      ),
                      _Badge(
                        emoji: '💰',
                        label: 'Money Guru',
                        unlocked: gameState.completedModules.length >= 20,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
    );
  }
}

// ============================================================
// STAT CARD
// ============================================================

class _StatCard extends StatelessWidget {
  final String emoji;
  final String value;
  final String label;
  final Color color;
  final Color textColor;

  const _StatCard({
    required this.emoji,
    required this.value,
    required this.label,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 26)),
          const SizedBox(height: 6),
          Text(
            value,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(fontSize: 11, color: textColor.withOpacity(0.7)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// ============================================================
// SECTION CARD
// ============================================================

class _SectionCard extends StatelessWidget {
  final String title;
  final Widget child;

  const _SectionCard({required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE8E8E8)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Color(0xFF202020),
            ),
          ),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }
}

// ============================================================
// PROGRESS ROW
// ============================================================

class _ProgressRow extends StatelessWidget {
  final String label;
  final int completed;
  final int total;
  final Color color;

  const _ProgressRow({
    required this.label,
    required this.completed,
    required this.total,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final double progress = total == 0 ? 0 : completed / total;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                label,
                style: const TextStyle(fontSize: 13, color: Color(0xFF555555)),
              ),
            ),
            Text(
              '$completed/$total',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 7,
            backgroundColor: const Color(0xFFF0EDF7),
            valueColor: AlwaysStoppedAnimation<Color>(color),
          ),
        ),
      ],
    );
  }
}

// ============================================================
// BADGE
// ============================================================

class _Badge extends StatelessWidget {
  final String emoji;
  final String label;
  final bool unlocked;

  const _Badge({required this.emoji, required this.label, required this.unlocked});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: unlocked ? 1.0 : 0.35,
      child: Column(
        children: [
          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              color: unlocked
                  ? const Color(0xFFE8DDF7)
                  : const Color(0xFFF0F0F0),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(emoji, style: const TextStyle(fontSize: 26)),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 11, color: Color(0xFF555555)),
          ),
        ],
      ),
    );
  }
}
