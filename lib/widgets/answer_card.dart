import 'dart:math';

import 'package:flutter/material.dart';

class AnswerCard extends StatelessWidget {
  final String text;
  final int index;

  final int? selectedAnswer;
  final int correctAnswer;

  final bool answered;

  final AnimationController shakeController;
  final AnimationController checkController;

  final VoidCallback onTap;

  const AnswerCard({
    super.key,
    required this.text,
    required this.index,
    required this.selectedAnswer,
    required this.correctAnswer,
    required this.answered,
    required this.shakeController,
    required this.checkController,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Is this option selected by the user?
    final bool isSelected = selectedAnswer == index;

    // Is this the correct option?
    final bool isCorrectAnswer = index == correctAnswer;

    // =========================================================
    // DEFAULT COLORS
    // =========================================================

    Color backgroundColor = Colors.white;

    Color borderColor = const Color(0xFFD9D9D9);

    // =========================================================
    // AFTER ANSWER IS SELECTED
    // =========================================================

    if (answered) {
      // Correct answer → GREEN
      if (isCorrectAnswer) {
        backgroundColor = const Color(0xFFC8E8C9);

        borderColor = const Color(0xFF70B875);
      }
      // Selected wrong answer → RED
      else if (isSelected) {
        backgroundColor = const Color(0xFFFFC8CC);

        borderColor = const Color(0xFFE8898D);
      }
    }

    // =========================================================
    // ANSWER CARD
    // =========================================================

    Widget card = AnimatedContainer(
      duration: const Duration(milliseconds: 350),

      curve: Curves.easeOut,

      width: double.infinity,

      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),

      decoration: BoxDecoration(
        color: backgroundColor,

        borderRadius: BorderRadius.circular(15),

        border: Border.all(color: borderColor, width: 1.2),

        boxShadow: const [
          BoxShadow(
            color: Color(0x12000000),
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),

      child: Row(
        children: [
          // ===================================================
          // OPTION LETTER
          // ===================================================
          Container(
            width: 34,
            height: 34,

            decoration: BoxDecoration(
              color: answered
                  ? Colors.white.withOpacity(0.65)
                  : const Color(0xFFF1EDF7),

              shape: BoxShape.circle,
            ),

            alignment: Alignment.center,

            child: Text(
              String.fromCharCode(65 + index),

              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF7252B5),
              ),
            ),
          ),

          const SizedBox(width: 14),

          // ===================================================
          // ANSWER TEXT
          // ===================================================
          Expanded(
            child: Text(
              text,

              style: const TextStyle(
                fontSize: 17,
                color: Color(0xFF202020),
                height: 1.3,
              ),
            ),
          ),

          const SizedBox(width: 10),

          // ===================================================
          // CORRECT CHECKMARK
          // ===================================================
          if (answered && isCorrectAnswer)
            ScaleTransition(
              scale: CurvedAnimation(
                parent: checkController,

                curve: Curves.elasticOut,
              ),

              child: const Icon(
                Icons.check_circle,

                color: Color(0xFF3FA34D),

                size: 29,
              ),
            ),

          // ===================================================
          // WRONG CROSS
          // ===================================================
          if (answered && isSelected && !isCorrectAnswer)
            const Icon(Icons.cancel, color: Color(0xFFD9535B), size: 29),
        ],
      ),
    );

    // =========================================================
    // WRONG ANSWER SHAKE
    // =========================================================

    if (answered && isSelected && !isCorrectAnswer) {
      return AnimatedBuilder(
        animation: shakeController,

        builder: (context, child) {
          final double offset =
              sin(shakeController.value * pi * 6) *
              7 *
              (1 - shakeController.value);

          return Transform.translate(offset: Offset(offset, 0), child: card);
        },
      );
    }

    // =========================================================
    // NORMAL CARD
    // =========================================================

    return GestureDetector(onTap: answered ? null : onTap, child: card);
  }
}
