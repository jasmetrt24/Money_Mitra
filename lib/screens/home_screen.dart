import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/game_state.dart';
import '../widgets/app_header.dart';
import 'level_modules_screen.dart';

// ============================================================
// HOME SCREEN — Level Map (winding node path)
// Levels 1 & 2 are unlocked and clickable.
// Levels 3–5 are greyed-out locked placeholders (no routes).
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
                // ============================================
                // XP / STREAK SUMMARY CARD
                // ============================================
                _SummaryCard(gameState: gameState),

                const SizedBox(height: 32),

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

                const SizedBox(height: 20),

                // ============================================
                // WINDING NODE PATH
                // ============================================
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
      _LevelData(
        number: 1,
        title: 'Money Fundamentals',
        subtitle: 'Budget, save, spend smart',
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
      _LevelData(
        number: 2,
        title: 'Banking & Investing',
        subtitle: 'UPI, EMI, SIP & more',
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
      _LevelData(
        number: 3,
        title: 'Advanced Investing',
        subtitle: 'Stocks, mutual funds & more',
        emoji: '📈',
        unlocked: false,
        levelId: 'level-3',
        completedModules: 0,
        totalModules: 10,
        color: Colors.grey,
        lightColor: const Color(0xFFF0F0F0),
      ),
      _LevelData(
        number: 4,
        title: 'Wealth Building',
        subtitle: 'Real estate, gold & beyond',
        emoji: '🏠',
        unlocked: false,
        levelId: 'level-4',
        completedModules: 0,
        totalModules: 10,
        color: Colors.grey,
        lightColor: const Color(0xFFF0F0F0),
      ),
      _LevelData(
        number: 5,
        title: 'Financial Independence',
        subtitle: 'Retire early, live free',
        emoji: '🦋',
        unlocked: false,
        levelId: 'level-5',
        completedModules: 0,
        totalModules: 10,
        color: Colors.grey,
        lightColor: const Color(0xFFF0F0F0),
      ),
    ];

    return Column(
      children: List.generate(levels.length, (i) {
        final level = levels[i];
        final isLast = i == levels.length - 1;
        // Alternate left/right for winding effect
        final alignRight = i.isEven;

        return Column(
          children: [
            // Node card
            Align(
              alignment: alignRight ? Alignment.centerRight : Alignment.centerLeft,
              child: FractionallySizedBox(
                widthFactor: 0.82,
                child: _LevelNode(
                  level: level,
                  onTap: level.unlocked
                      ? () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => LevelModulesScreen(
                                levelId: level.levelId,
                                levelTitle: 'Level ${level.number} — ${level.title}',
                              ),
                            ),
                          )
                      : null,
                ),
              ),
            ),
            // Connector (except after last node)
            if (!isLast)
              _WindingConnector(
                goRight: alignRight,
                color: level.unlocked
                    ? level.color.withOpacity(0.35)
                    : Colors.grey.withOpacity(0.2),
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
    final l1Done = gameState.completedModules.where((id) => id.startsWith('l1')).length;
    final l2Done = gameState.completedModules.where((id) => id.startsWith('l2')).length;
    final totalDone = l1Done + l2Done;

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
            color: const Color(0xFF7252B5).withOpacity(0.3),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Your Progress',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
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
              _MiniStat(
                emoji: '✅',
                value: '$totalDone',
                label: 'Modules',
              ),
            ],
          ),
          const SizedBox(height: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: totalDone / 20,
              minHeight: 8,
              backgroundColor: Colors.white24,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            '$totalDone of 20 modules completed',
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(emoji, style: const TextStyle(fontSize: 18)),
            const SizedBox(width: 6),
            Text(
              value,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        Text(label, style: const TextStyle(color: Colors.white60, fontSize: 12)),
      ],
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
    final progress =
        level.totalModules == 0 ? 0.0 : level.completedModules / level.totalModules;

    return Tooltip(
      message: level.unlocked
          ? ''
          : 'Complete previous levels to unlock',
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
                  ? level.color.withOpacity(0.3)
                  : const Color(0xFFE0E0E0),
              width: 1.5,
            ),
            boxShadow: level.unlocked
                ? [
                    BoxShadow(
                      color: level.color.withOpacity(0.1),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : [],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // Level circle badge
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

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Level ${level.number}',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color:
                                level.unlocked ? level.color : Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          level.title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: level.unlocked
                                ? const Color(0xFF202020)
                                : Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          level.subtitle,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  if (level.unlocked)
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: level.color,
                    )
                  else
                    const Icon(
                      Icons.lock_outline,
                      size: 18,
                      color: Colors.grey,
                    ),
                ],
              ),

              if (level.unlocked) ...[
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${level.completedModules}/${level.totalModules} modules',
                      style: TextStyle(
                        fontSize: 12,
                        color: level.color.withOpacity(0.8),
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
              ] else ...[
                const SizedBox(height: 10),
                Text(
                  'Complete previous levels to unlock',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.grey.shade500,
                  ),
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
        painter: _ConnectorPainter(
          goRight: goRight,
          color: color,
        ),
      ),
    );
  }
}

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
      // Node is on the right, next is on the left
      // Draw a curve from bottom-right area to bottom-left area
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
      // Node is on the left, next is on the right
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
  bool shouldRepaint(covariant _ConnectorPainter old) =>
      old.goRight != goRight || old.color != color;
}
