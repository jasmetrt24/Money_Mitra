import '../quiz_question.dart';

const List<QuizQuestion> l1m10Quiz = [
  QuizQuestion(
    question: 'Which habit can improve money management?',
    options: [
      'Never checking your balance',
      'Tracking spending regularly',
      'Spending without a plan',
      'Ignoring financial goals',
    ],
    correctAnswer: 1,
    explanation:
        'Regularly tracking spending helps you understand and manage your money.',
  ),

  QuizQuestion(
    question: 'Why can a monthly financial review be useful?',
    options: [
      'It helps identify spending patterns',
      'It guarantees investment profits',
      'It removes the need for saving',
      'It prevents all unexpected expenses',
    ],
    correctAnswer: 0,
    explanation:
        'A review can reveal spending patterns and help you adjust your financial plan.',
  ),

  // Add remaining questions here.
];
