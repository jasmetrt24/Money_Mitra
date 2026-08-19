import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/game_state.dart';
import '../widgets/app_header.dart';
import 'level_modules_screen.dart';

// ============================================================
// PASTEL THEME
// ============================================================

const Color pastelBlue = Color(0xFFAFCFE8);
const Color pastelGreen = Color(0xFFAFD582);
const Color pastelLavender = Color(0xFFC9BBEE);
const Color pastelPink = Color(0xFFFDBCC3);
const Color pastelRed = Color(0xFFF4A6A6);
const Color pastelYellow = Color(0xFFF6E39A);
const Color warmWhite = Color(0xFFFFF9F0);
const Color goldenGrey = Color(0xFFD9D2A8);
const Color darkText = Color(0xFF111111);

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
      // ==========================================================
      // PASTEL BLUE BACKGROUND
      // ==========================================================
      backgroundColor: pastelBlue,

      appBar: const AppHeader(),

      body: Consumer<GameState>(
        builder: (context, gameState, _) {
          return CustomPaint(
            painter: _DotPatternPainter(),

            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),

              padding: const EdgeInsets.fromLTRB(14, 20, 14, 40),

              child: Column(
                children: [
                  // ==================================================
                  // XP / STREAK SUMMARY
                  // ==================================================
                  _SummaryCard(gameState: gameState),

                  const SizedBox(height: 30),

                  // ==================================================
                  // LEARNING PATH TITLE
                  // ==================================================
                  const Align(
                    alignment: Alignment.centerLeft,

                    child: Text(
                      'Learning Path',

                      style: TextStyle(
                        fontSize: 31.6,
                        fontWeight: FontWeight.w900,
                        color: darkText,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Align(
                    alignment: Alignment.centerLeft,

                    child: Text(
                      'Build your financial knowledge step by step',

                      style: TextStyle(
                        fontSize: 14.5,
                        fontWeight: FontWeight.w600,
                        color: darkText,
                      ),
                    ),
                  ),

                  const SizedBox(height: 22),

                  // ==================================================
                  // LEVEL MAP
                  // ==================================================
                  _buildLevelMap(context, gameState),
                ],
              ),
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

        color: pastelGreen,
        lightColor: const Color(0xFFE8F3D7),
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

        color: pastelLavender,
        lightColor: const Color(0xFFE9E3F8),
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

        color: pastelYellow,
        lightColor: const Color(0xFFFFF4C9),
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

        color: pastelRed,
        lightColor: const Color(0xFFF9DADA),
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

        color: pastelPink,
        lightColor: const Color(0xFFFCE5E8),
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

        color: pastelGreen,
        lightColor: const Color(0xFFE8F3D7),
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

        color: pastelLavender,
        lightColor: const Color(0xFFE9E3F8),
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

        color: pastelYellow,
        lightColor: const Color(0xFFFFF4C9),
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

        color: pastelRed,
        lightColor: const Color(0xFFF9DADA),
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

        color: pastelPink,
        lightColor: const Color(0xFFFCE5E8),
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

        color: pastelGreen,
        lightColor: const Color(0xFFE8F3D7),
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
                widthFactor: 0.94,

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

                color: darkText.withValues(alpha: level.unlocked ? 0.45 : 0.18),
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
        color: pastelLavender,

        borderRadius: BorderRadius.circular(22),

        border: Border.all(color: darkText, width: 2),

        boxShadow: const [
          BoxShadow(color: darkText, offset: Offset(4, 4), blurRadius: 0),
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
              color: darkText,
              fontSize: 20.2,
              fontWeight: FontWeight.w900,
            ),
          ),

          const SizedBox(height: 14),

          // ======================================================
          // STATS
          // ======================================================
          Row(
            children: [
              _MiniStat(
                emoji: '🪙',
                value: '${gameState.totalXP}',
                label: 'XP',
                color: pastelYellow,
              ),

              const SizedBox(width: 12),

              _MiniStat(
                emoji: '🔥',
                value: '${gameState.currentStreak}',
                label: 'Streak',
                color: pastelRed,
              ),

              const SizedBox(width: 12),

              _MiniStat(
                emoji: '✅',
                value: '$totalDone',
                label: 'Modules',
                color: pastelGreen,
              ),
            ],
          ),

          const SizedBox(height: 18),

          // ======================================================
          // OVERALL PROGRESS
          // ======================================================
          Container(
            height: 12,

            decoration: BoxDecoration(
              color: warmWhite,

              borderRadius: BorderRadius.circular(20),

              border: Border.all(color: darkText, width: 1.5),
            ),

            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),

              child: LinearProgressIndicator(
                value: progress,

                backgroundColor: Colors.transparent,

                valueColor: const AlwaysStoppedAnimation<Color>(pastelGreen),
              ),
            ),
          ),

          const SizedBox(height: 8),

          Text(
            '$totalDone of $totalModules modules completed',

            style: const TextStyle(
              color: darkText,
              fontSize: 16.4,
              fontWeight: FontWeight.w700,
            ),
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
  final Color color;

  const _MiniStat({
    required this.emoji,
    required this.value,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 10),

        decoration: BoxDecoration(
          color: color,

          borderRadius: BorderRadius.circular(14),

          border: Border.all(color: darkText, width: 1.5),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                Text(emoji, style: const TextStyle(fontSize: 22.8)),

                const SizedBox(width: 5),

                Flexible(
                  child: Text(
                    value,

                    overflow: TextOverflow.ellipsis,

                    style: const TextStyle(
                      fontSize: 26.6,
                      fontWeight: FontWeight.w900,
                      color: darkText,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 2),

            Text(
              label,

              style: TextStyle(
                color: darkText.withValues(alpha: 0.65),
                fontSize: 13.9,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
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

          padding: const EdgeInsets.all(20),

          decoration: BoxDecoration(
            color: level.unlocked ? level.color : const Color(0xFFE8E5DE),

            borderRadius: BorderRadius.circular(20),

            border: Border.all(color: darkText, width: 2),

            boxShadow: const [
              BoxShadow(color: darkText, offset: Offset(4, 4), blurRadius: 0),
            ],
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // ==================================================
              // LEVEL HEADER
              // ==================================================
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  // =================================================
                  // LEVEL ICON
                  // =================================================
                  Container(
                    width: 56,
                    height: 56,

                    decoration: BoxDecoration(
                      color: warmWhite,

                      borderRadius: BorderRadius.circular(15),

                      border: Border.all(color: darkText, width: 2),
                    ),

                    child: Center(
                      child: level.unlocked
                          ? Text(
                              level.emoji,

                              style: const TextStyle(fontSize: 36.7),
                            )
                          : const Icon(
                              Icons.lock,
                              color: Color(0xFF777777),
                              size: 26.4,
                            ),
                    ),
                  ),

                  const SizedBox(width: 16),

                  // =================================================
                  // LEVEL INFORMATION
                  // =================================================
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        // =========================================
                        // LEVEL LABEL
                        // =========================================
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 9,
                            vertical: 4,
                          ),

                          decoration: BoxDecoration(
                            color: warmWhite,

                            borderRadius: BorderRadius.circular(7),

                            border: Border.all(color: darkText, width: 1.2),
                          ),

                          child: Text(
                            'LEVEL ${level.number}',

                            style: const TextStyle(
                              fontSize: 13.9,
                              fontWeight: FontWeight.w900,
                              color: darkText,
                              letterSpacing: 0.7,
                            ),
                          ),
                        ),

                        const SizedBox(height: 6),

                        // =========================================
                        // TITLE
                        // =========================================
                        Text(
                          level.title,

                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,

                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w900,
                            color: level.unlocked
                                ? darkText
                                : Colors.grey.shade600,
                            letterSpacing: -0.2,
                          ),
                        ),

                        const SizedBox(height: 3),

                        // =========================================
                        // SUBTITLE
                        // =========================================
                        Text(
                          level.subtitle,

                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,

                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                            color: darkText.withValues(alpha: 0.70),
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
                    Container(
                      width: 42,
                      height: 42,

                      decoration: BoxDecoration(
                        color: warmWhite,

                        borderRadius: BorderRadius.circular(12),

                        border: Border.all(color: darkText, width: 1.5),
                      ),

                      child: const Icon(
                        Icons.arrow_forward,
                        size: 23.1,
                        color: darkText,
                      ),
                    )
                  else
                    const Icon(
                      Icons.lock_outline,
                      size: 23.1,
                      color: Colors.grey,
                    ),
                ],
              ),

              // ==================================================
              // UNLOCKED PROGRESS
              // ==================================================
              if (level.unlocked) ...[
                const SizedBox(height: 17),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      '${level.completedModules}/${level.totalModules} modules',

                      style: const TextStyle(
                        fontSize: 16.4,
                        fontWeight: FontWeight.w800,
                        color: darkText,
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),

                      decoration: BoxDecoration(
                        color: warmWhite,

                        borderRadius: BorderRadius.circular(7),

                        border: Border.all(color: darkText, width: 1),
                      ),

                      child: Text(
                        '${(progress * 100).round()}%',

                        style: const TextStyle(
                          fontSize: 13.9,
                          fontWeight: FontWeight.w900,
                          color: darkText,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                // ===============================================
                // LEVEL PROGRESS BAR
                // ===============================================
                Container(
                  height: 10,

                  decoration: BoxDecoration(
                    color: warmWhite,

                    borderRadius: BorderRadius.circular(20),

                    border: Border.all(color: darkText, width: 1.2),
                  ),

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),

                    child: LinearProgressIndicator(
                      value: progress,

                      backgroundColor: Colors.transparent,

                      valueColor: AlwaysStoppedAnimation<Color>(
                        level.lightColor,
                      ),
                    ),
                  ),
                ),
              ]
              // ==================================================
              // LOCKED LEVEL MESSAGE
              // ==================================================
              else ...[
                const SizedBox(height: 12),

                Text(
                  'Complete previous levels to unlock',

                  style: TextStyle(
                    fontSize: 15.2,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade600,
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
        size: Size(MediaQuery.of(context).size.width - 28, 44),

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

      path.moveTo(size.width * 0.88, 0);

      path.cubicTo(
        size.width * 0.88,
        size.height * 0.5,

        size.width * 0.12,
        size.height * 0.5,

        size.width * 0.12,
        size.height,
      );
    } else {
      // ======================================================
      // LEFT → RIGHT
      // ======================================================

      path.moveTo(size.width * 0.12, 0);

      path.cubicTo(
        size.width * 0.12,
        size.height * 0.5,

        size.width * 0.88,
        size.height * 0.5,

        size.width * 0.88,
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

// ============================================================
// BACKGROUND DOT PATTERN
// ============================================================

class _DotPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = darkText.withValues(alpha: 0.10)
      ..style = PaintingStyle.fill;

    const double spacing = 24;
    const double radius = 1.5;

    for (double x = spacing / 2; x < size.width; x += spacing) {
      for (double y = spacing / 2; y < size.height; y += spacing) {
        canvas.drawCircle(Offset(x, y), radius, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _DotPatternPainter oldDelegate) {
    return false;
  }
}
