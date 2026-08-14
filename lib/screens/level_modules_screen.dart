import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data/module_data.dart';
import '../services/game_state.dart';
import 'lesson_screen.dart';
import 'module_intro_screen.dart';

// ============================================================
// LEVEL MODULES SCREEN
// Displays the 10 modules for a given level as a vertical list.
// ============================================================

class LevelModulesScreen extends StatelessWidget {
  final String levelId;
  final String levelTitle;

  const LevelModulesScreen({
    super.key,
    required this.levelId,
    required this.levelTitle,
  });

  @override
  Widget build(BuildContext context) {
    final modules = getModulesForLevel(levelId);

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
        title: Text(
          levelTitle,
          style: const TextStyle(
            color: Color(0xFF202020),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Consumer<GameState>(
              builder: (context, gs, _) {
                final done = modules
                    .where((m) => gs.isModuleCompleted(m.id))
                    .length;
                return Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFE8DDF7),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '$done/${modules.length}',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF7252B5),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: Consumer<GameState>(
        builder: (context, gameState, _) {
          return ListView.separated(
            padding: const EdgeInsets.all(20),
            itemCount: modules.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final module = modules[index];
              final completed = gameState.isModuleCompleted(module.id);
              return _ModuleCard(
                module: module,
                index: index,
                completed: completed,
                onTap: () => _openModule(context, module),
              );
            },
          );
        },
      ),
    );
  }

  void _openModule(BuildContext context, AppModule module) {
    Widget screen;
    // Level 1 Module 1 → existing LessonScreen (preserved)
    if (module.id == 'l1m1') {
      screen = const LessonScreen();
    } else {
      screen = ModuleIntroScreen(module: module);
    }
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }
}

// ============================================================
// MODULE CARD
// ============================================================

class _ModuleCard extends StatelessWidget {
  final AppModule module;
  final int index;
  final bool completed;
  final VoidCallback onTap;

  const _ModuleCard({
    required this.module,
    required this.index,
    required this.completed,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: completed
                ? const Color(0xFF70B875)
                : const Color(0xFFE8E8E8),
            width: completed ? 1.5 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // ============================================
            // MODULE NUMBER
            // ============================================
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: completed
                    ? const Color(0xFFE8F6E9)
                    : const Color(0xFFF1EDF7),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  '${index + 1}',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: completed
                        ? const Color(0xFF3FA34D)
                        : const Color(0xFF7252B5),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 14),

            // ============================================
            // ICON
            // ============================================
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: completed
                    ? const Color(0xFFE8F6E9)
                    : const Color(0xFFE8DDF7),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Icon(
                module.icon,
                size: 24,
                color: completed
                    ? const Color(0xFF3FA34D)
                    : const Color(0xFF7252B5),
              ),
            ),

            const SizedBox(width: 14),

            // ============================================
            // TEXT
            // ============================================
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    module.title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF202020),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    module.subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF888888),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 10),

            // ============================================
            // STATUS ICON
            // ============================================
            if (completed)
              const Icon(Icons.check_circle, color: Color(0xFF3FA34D), size: 24)
            else
              const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF7252B5),
                size: 16,
              ),
          ],
        ),
      ),
    );
  }
}
