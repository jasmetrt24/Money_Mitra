import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/game_state.dart';
import '../screens/profile_screen.dart';

// ============================================================
// APP HEADER
// Sticky header with:
//   • Circular profile avatar (top-left)
//   • "MoneyMitra" wordmark (center)
//   • XP chip + Streak chip (top-right)
// Listens to GameState for live updates.
// ============================================================

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    return Consumer<GameState>(
      builder: (context, gameState, _) {
        return Container(
          height: preferredSize.height + MediaQuery.of(context).padding.top,
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            left: 16,
            right: 16,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(0x12000000),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ==================================================
              // PROFILE AVATAR (top-left)
              // ==================================================
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const ProfileScreen()),
                  );
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      colors: [Color(0xFF7252B5), Color(0xFF9675D1)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    border: Border.all(
                      color: const Color(0xFFE8DDF7),
                      width: 2,
                    ),
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 22,
                  ),
                ),
              ),

              // ==================================================
              // WORDMARK (center, flexible)
              // ==================================================
              Expanded(
                child: Center(
                  child: Text(
                    'MoneyMitra',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF7252B5),
                      letterSpacing: -0.3,
                    ),
                  ),
                ),
              ),

              // ==================================================
              // XP + STREAK (top-right)
              // ==================================================
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _StatChip(
                    icon: '🪙',
                    value: '${gameState.totalXP}',
                    label: 'XP',
                    color: const Color(0xFFFFF3C4),
                    textColor: const Color(0xFF8B6914),
                  ),
                  const SizedBox(width: 8),
                  _StatChip(
                    icon: '🔥',
                    value: '${gameState.currentStreak}',
                    label: 'd',
                    color: const Color(0xFFFFECE0),
                    textColor: const Color(0xFFB84A00),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

// ============================================================
// STAT CHIP — compact XP / streak display
// On narrow screens the label is omitted; icon + number remain.
// ============================================================

class _StatChip extends StatelessWidget {
  final String icon;
  final String value;
  final String label;
  final Color color;
  final Color textColor;

  const _StatChip({
    required this.icon,
    required this.value,
    required this.label,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final showLabel = screenWidth >= 360;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(icon, style: const TextStyle(fontSize: 15)),
          const SizedBox(width: 4),
          Text(
            showLabel ? '$value $label' : value,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
