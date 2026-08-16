import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/game_state.dart';
import '../widgets/app_header.dart';
import 'level_modules_screen.dart';

// ============================================================
// HOME SCREEN — 11 LEVEL LEARNING PATH
//
// Level 1 & Level 2 are currently unlocked.
// Level 3–11 are locked placeholders.
//
// Total curriculum:
// 11 Levels × 10 Modules = 110 Modules
// ============================================================

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FC),

      appBar: const AppHeader(),

      body: Consumer<GameState>(
        builder: (context, gameState, _) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),

            padding: const EdgeInsets.fromLTRB(24, 20, 24, 40),

            child: Column(
              children: [
                // ==================================================
                // XP / STREAK SUMMARY
                // ==================================================
                _SummaryCard(gameState: gameState),

                const SizedBox(height: 32),

                // ==================================================
                // LEARNING PATH TITLE
                // ==================================================
                const Align(
                  alignment: Alignment.centerLeft,

                  child: Text(
                    'Learning Path',

                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF202020),
                    ),
                  ),
                ),

                const SizedBox(height: 6),

                const Align(
                  alignment: Alignment.centerLeft,

                  child: Text(
                    'Build your financial knowledge step by step',
                    style: TextStyle(fontSize: 14, color: Color(0xFF777777)),
                  ),
                ),

                const SizedBox(height: 22),

                // ==================================================
                // LEVEL MAP
                // ==================================================
                _buildLevelMap(context, gameState),
              ],
            ),
          );
        },
      ),
    );
  }

  // ============================================================
  // LEVEL MAP
  // ============================================================

  Widget _buildLevelMap(BuildContext context, GameState gameState) {
    final levels = [
      // ========================================================
      // LEVEL 1
      // ========================================================
      _LevelData(
        number: 1,
        title: 'Money Foundations',
        subtitle: 'Learn the basics of money and budgeting',
        emoji: '💰',
        unlocked: true,
        levelId: 'level-1',

        completedModules: gameState.completedModules
            .where((id) => id.startsWith('l1'))
            .length,

        totalModules: 10,

        color: const Color(0xFF7252B5),
        lightColor: const Color(0xFFE8DDF7),
      ),

      // ========================================================
      // LEVEL 2
      // ========================================================
      _LevelData(
        number: 2,
        title: 'Saving & Budgeting',
        subtitle: 'Build strong saving and spending habits',
        emoji: '🏦',
        unlocked: true,
        levelId: 'level-2',

        completedModules: gameState.completedModules
            .where((id) => id.startsWith('l2'))
            .length,

        totalModules: 10,

        color: const Color(0xFF2E7D32),
        lightColor: const Color(0xFFE8F6E9),
      ),

      // ========================================================
      // LEVEL 3
      // ========================================================
      _LevelData(
        number: 3,
        title: 'Banking Basics',
        subtitle: 'Understand accounts, cards, and banking',
        emoji: '🏛️',
        unlocked: false,
        levelId: 'level-3',
        completedModules: 0,
        totalModules: 10,
        color: const Color(0xFF1976D2),
        lightColor: const Color(0xFFE3F2FD),
      ),

      // ========================================================
      // LEVEL 4
      // ========================================================
      _LevelData(
        number: 4,
        title: 'Digital Money & Safety',
        subtitle: 'UPI, digital payments, and fraud protection',
        emoji: '📱',
        unlocked: false,
        levelId: 'level-4',
        completedModules: 0,
        totalModules: 10,
        color: const Color(0xFFE65100),
        lightColor: const Color(0xFFFFF3E0),
      ),

      // ========================================================
      // LEVEL 5
      // ========================================================
      _LevelData(
        number: 5,
        title: 'Credit & Loans',
        subtitle: 'Understand borrowing, EMIs, and credit',
        emoji: '💳',
        unlocked: false,
        levelId: 'level-5',
        completedModules: 0,
        totalModules: 10,
        color: const Color(0xFFC62828),
        lightColor: const Color(0xFFFFEBEE),
      ),

      // ========================================================
      // LEVEL 6
      // ========================================================
      _LevelData(
        number: 6,
        title: 'Real-Life Practical Challenges',
        subtitle: 'Apply money skills to everyday situations',
        emoji: '🎯',
        unlocked: false,
        levelId: 'level-6',
        completedModules: 0,
        totalModules: 10,
        color: const Color(0xFF00838F),
        lightColor: const Color(0xFFE0F7FA),
      ),

      // ========================================================
      // LEVEL 7
      // ========================================================
      _LevelData(
        number: 7,
        title: 'Insurance & Risk Protection',
        subtitle: 'Protect yourself from financial risks',
        emoji: '🛡️',
        unlocked: false,
        levelId: 'level-7',
        completedModules: 0,
        totalModules: 10,
        color: const Color(0xFF6A1B9A),
        lightColor: const Color(0xFFF3E5F5),
      ),

      // ========================================================
      // LEVEL 8
      // ========================================================
      _LevelData(
        number: 8,
        title: 'Basic Economics',
        subtitle: 'Understand markets, inflation, and the economy',
        emoji: '📊',
        unlocked: false,
        levelId: 'level-8',
        completedModules: 0,
        totalModules: 10,
        color: const Color(0xFF1565C0),
        lightColor: const Color(0xFFE3F2FD),
      ),

      // ========================================================
      // LEVEL 9
      // ========================================================
      _LevelData(
        number: 9,
        title: 'Time Value of Money & Math of Wealth',
        subtitle: 'Master compounding, returns, and financial math',
        emoji: '🧮',
        unlocked: false,
        levelId: 'level-9',
        completedModules: 0,
        totalModules: 10,
        color: const Color(0xFF4527A0),
        lightColor: const Color(0xFFEDE7F6),
      ),

      // ========================================================
      // LEVEL 10
      // ========================================================
      _LevelData(
        number: 10,
        title: 'Accounting Basics & Statements',
        subtitle: 'Understand financial statements and accounting',
        emoji: '📚',
        unlocked: false,
        levelId: 'level-10',
        completedModules: 0,
        totalModules: 10,
        color: const Color(0xFF37474F),
        lightColor: const Color(0xFFECEFF1),
      ),

      // ========================================================
      // LEVEL 11
      // ========================================================
      _LevelData(
        number: 11,
        title: 'Investing Basics & Asset Classes',
        subtitle: 'Learn investing, diversification, and risk',
        emoji: '📈',
        unlocked: false,
        levelId: 'level-11',
        completedModules: 0,
        totalModules: 10,
        color: const Color(0xFF00695C),
        lightColor: const Color(0xFFE0F2F1),
      ),
    ];

    return Column(
      children: List.generate(levels.length, (index) {
        final level = levels[index];

        final isLast = index == levels.length - 1;

        // Alternate left/right for winding effect.
        final alignRight = index.isEven;

        return Column(
          children: [
            // ==================================================
            // LEVEL NODE
            // ==================================================
            Align(
              alignment: alignRight
                  ? Alignment.centerRight
                  : Alignment.centerLeft,

              child: FractionallySizedBox(
                widthFactor: 0.86,

                child: _LevelNode(
                  level: level,

                  onTap: level.unlocked
                      ? () {
                          Navigator.push(
                            context,

                            MaterialPageRoute(
                              builder: (_) => LevelModulesScreen(
                                levelId: level.levelId,

                                levelTitle:
                                    'Level ${level.number} — ${level.title}',
                              ),
                            ),
                          );
                        }
                      : null,
                ),
              ),
            ),

            // ==================================================
            // CONNECTOR
            // ==================================================
            if (!isLast)
              _WindingConnector(
                goRight: alignRight,

                color: level.unlocked
                    ? level.color.withValues(alpha: 0.35)
                    : Colors.grey.withValues(alpha: 0.2),
              ),
          ],
        );
      }),
    );
  }
}

// ============================================================
// SUMMARY CARD
// ============================================================

class _SummaryCard extends StatelessWidget {
  final GameState gameState;

  const _SummaryCard({required this.gameState});

  @override
  Widget build(BuildContext context) {
    // ==========================================================
    // COMPLETED MODULES
    // ==========================================================

    final totalDone = gameState.completedModules.length;

    // Total curriculum = 110 modules.
    const totalModules = 110;

    final progress = totalModules == 0
        ? 0.0
        : (totalDone / totalModules).clamp(0.0, 1.0);

    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(22),

      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF7252B5), Color(0xFF9675D1)],

          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),

        borderRadius: BorderRadius.circular(24),

        boxShadow: [
          BoxShadow(
            color: const Color(0xFF7252B5).withValues(alpha: 0.35),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // ======================================================
          // TITLE
          // ======================================================
          const Text(
            'Your Progress',

            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),

          const SizedBox(height: 12),

          // ======================================================
          // STATS
          // ======================================================
          Row(
            children: [
              _MiniStat(
                emoji: '🪙',
                value: '${gameState.totalXP}',
                label: 'XP',
              ),

              const SizedBox(width: 20),

              _MiniStat(
                emoji: '🔥',
                value: '${gameState.currentStreak}',
                label: 'Streak',
              ),

              const SizedBox(width: 20),

              _MiniStat(emoji: '✅', value: '$totalDone', label: 'Modules'),
            ],
          ),

          const SizedBox(height: 18),

          // ======================================================
          // OVERALL PROGRESS
          // ======================================================
          ClipRRect(
            borderRadius: BorderRadius.circular(10),

            child: LinearProgressIndicator(
              value: progress,

              minHeight: 8,

              backgroundColor: Colors.white24,

              valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),

          const SizedBox(height: 7),

          Text(
            '$totalDone of $totalModules modules completed',

            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// MINI STAT
// ============================================================

class _MiniStat extends StatelessWidget {
  final String emoji;
  final String value;
  final String label;

  const _MiniStat({
    required this.emoji,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            children: [
              Text(emoji, style: const TextStyle(fontSize: 18)),

              const SizedBox(width: 6),

              Flexible(
                child: Text(
                  value,

                  overflow: TextOverflow.ellipsis,

                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 2),

          Text(
            label,

            style: const TextStyle(color: Colors.white60, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

// ============================================================
// LEVEL DATA MODEL
// ============================================================

class _LevelData {
  final int number;
  final String title;
  final String subtitle;
  final String emoji;
  final bool unlocked;
  final String levelId;
  final int completedModules;
  final int totalModules;
  final Color color;
  final Color lightColor;

  const _LevelData({
    required this.number,
    required this.title,
    required this.subtitle,
    required this.emoji,
    required this.unlocked,
    required this.levelId,
    required this.completedModules,
    required this.totalModules,
    required this.color,
    required this.lightColor,
  });
}

// ============================================================
// LEVEL NODE CARD
// ============================================================

class _LevelNode extends StatelessWidget {
  final _LevelData level;
  final VoidCallback? onTap;

  const _LevelNode({required this.level, this.onTap});

  @override
  Widget build(BuildContext context) {
    final progress = level.totalModules == 0
        ? 0.0
        : (level.completedModules / level.totalModules).clamp(0.0, 1.0);

    return Tooltip(
      message: level.unlocked ? '' : 'Complete previous levels to unlock',

      child: GestureDetector(
        onTap: onTap,

        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),

          padding: const EdgeInsets.all(18),

          decoration: BoxDecoration(
            color: level.unlocked ? Colors.white : const Color(0xFFF5F5F5),

            borderRadius: BorderRadius.circular(22),

            border: Border.all(
              color: level.unlocked
                  ? level.color.withValues(alpha: 0.35)
                  : const Color(0xFFE0E0E0),

              width: 1.5,
            ),

            boxShadow: level.unlocked
                ? [
                    BoxShadow(
                      color: level.color.withValues(alpha: 0.10),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : [],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // ==================================================
              // LEVEL HEADER
              // ==================================================
              Row(
                children: [
                  // =================================================
                  // LEVEL BADGE
                  // =================================================
                  Container(
                    width: 48,
                    height: 48,

                    decoration: BoxDecoration(
                      color: level.unlocked
                          ? level.lightColor
                          : const Color(0xFFEEEEEE),

                      shape: BoxShape.circle,
                    ),

                    child: Center(
                      child: level.unlocked
                          ? Text(
                              level.emoji,

                              style: const TextStyle(fontSize: 24),
                            )
                          : const Icon(
                              Icons.lock,
                              color: Colors.grey,
                              size: 22,
                            ),
                    ),
                  ),

                  const SizedBox(width: 14),

                  // =================================================
                  // LEVEL INFORMATION
                  // =================================================
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          'Level ${level.number}',

                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: level.unlocked ? level.color : Colors.grey,
                          ),
                        ),

                        const SizedBox(height: 2),

                        Text(
                          level.title,

                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: level.unlocked
                                ? const Color(0xFF202020)
                                : Colors.grey,
                          ),
                        ),

                        const SizedBox(height: 3),

                        Text(
                          level.subtitle,

                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,

                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 8),

                  // =================================================
                  // ARROW / LOCK
                  // =================================================
                  if (level.unlocked)
                    Icon(Icons.arrow_forward_ios, size: 15, color: level.color)
                  else
                    const Icon(
                      Icons.lock_outline,
                      size: 18,
                      color: Colors.grey,
                    ),
                ],
              ),

              // ==================================================
              // UNLOCKED PROGRESS
              // ==================================================
              if (level.unlocked) ...[
                const SizedBox(height: 14),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      '${level.completedModules}/${level.totalModules} modules',

                      style: TextStyle(
                        fontSize: 12,
                        color: level.color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      '${(progress * 100).round()}%',

                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: level.color,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                ClipRRect(
                  borderRadius: BorderRadius.circular(10),

                  child: LinearProgressIndicator(
                    value: progress,

                    minHeight: 6,

                    backgroundColor: level.lightColor,

                    valueColor: AlwaysStoppedAnimation<Color>(level.color),
                  ),
                ),
              ]
              // ==================================================
              // LOCKED LEVEL MESSAGE
              // ==================================================
              else ...[
                const SizedBox(height: 10),

                Text(
                  'Complete previous levels to unlock',

                  style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// WINDING CONNECTOR
// ============================================================

class _WindingConnector extends StatelessWidget {
  final bool goRight;
  final Color color;

  const _WindingConnector({required this.goRight, required this.color});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,

      child: CustomPaint(
        size: Size(MediaQuery.of(context).size.width - 48, 44),

        painter: _ConnectorPainter(goRight: goRight, color: color),
      ),
    );
  }
}

// ============================================================
// CONNECTOR PAINTER
// ============================================================

class _ConnectorPainter extends CustomPainter {
  final bool goRight;
  final Color color;

  _ConnectorPainter({required this.goRight, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final path = Path();

    if (goRight) {
      // ======================================================
      // RIGHT → LEFT
      // ======================================================

      path.moveTo(size.width * 0.82, 0);

      path.cubicTo(
        size.width * 0.82,
        size.height * 0.5,
        size.width * 0.18,
        size.height * 0.5,
        size.width * 0.18,
        size.height,
      );
    } else {
      // ======================================================
      // LEFT → RIGHT
      // ======================================================

      path.moveTo(size.width * 0.18, 0);

      path.cubicTo(
        size.width * 0.18,
        size.height * 0.5,
        size.width * 0.82,
        size.height * 0.5,
        size.width * 0.82,
        size.height,
      );
    }

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _ConnectorPainter old) {
    return old.goRight != goRight || old.color != color;
  }
}
