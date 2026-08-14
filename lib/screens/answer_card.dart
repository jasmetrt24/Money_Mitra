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
    final bool isSelected = selectedAnswer == index;

    final bool isCorrectAnswer = index == correctAnswer;

    Color backgroundColor = Colors.white;

    Color borderColor = const Color(0xFFD9D9D9);

    // ==========================
    // ANSWER COLORS
    // ==========================

    if (answered) {
      // Correct answer becomes green.
      if (isCorrectAnswer) {
        backgroundColor = const Color(0xFFC8E8C9);

        borderColor = const Color(0xFF7BBF7F);
      }
      // Selected wrong answer becomes red.
      else if (isSelected) {
        backgroundColor = const Color(0xFFFFC8CC);

        borderColor = const Color(0xFFE8898D);
      }
    }

    // ==========================
    // CARD
    // ==========================

    Widget card = AnimatedContainer(
      duration: const Duration(milliseconds: 350),

      curve: Curves.easeOut,

      width: double.infinity,

      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 17),

      decoration: BoxDecoration(
        color: backgroundColor,

        borderRadius: BorderRadius.circular(15),

        border: Border.all(color: borderColor, width: 1),

        boxShadow: const [
          BoxShadow(
            color: Color(0x15000000),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),

      child: Row(
        children: [
          // ==========================
          // OPTION TEXT
          // ==========================
          Expanded(
            child: Text(
              '${String.fromCharCode(65 + index)}. $text',

              style: const TextStyle(fontSize: 17, color: Color(0xFF202020)),
            ),
          ),

          // ==========================
          // CHECKMARK
          // ==========================
          if (answered && isCorrectAnswer)
            ScaleTransition(
              scale: CurvedAnimation(
                parent: checkController,

                curve: Curves.elasticOut,
              ),

              child: const Icon(
                Icons.check_circle,
                color: Color(0xFF3FA34D),
                size: 28,
              ),
            ),
        ],
      ),
    );

    // ==========================
    // WRONG ANSWER SHAKE
    // ==========================

    if (answered && isSelected && !isCorrectAnswer) {
      return AnimatedBuilder(
        animation: shakeController,

        builder: (context, child) {
          final double offset =
              sin(shakeController.value * pi * 6) *
              7 *
              (1 - shakeController.value);

          return Transform.translate(
            offset: Offset(offset, 0),

            child: GestureDetector(onTap: null, child: card),
          );
        },
      );
    }

    // ==========================
    // NORMAL CARD
    // ==========================

    return GestureDetector(onTap: answered ? null : onTap, child: card);
  }
}
