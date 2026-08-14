import '../quiz_question.dart';

const List<QuizQuestion> l2m2Quiz = [
  QuizQuestion(
    question: 'What does UPI allow users to do?',
    options: [
      'Make digital payments between supported bank accounts',
      'Print physical currency',
      'Guarantee investment returns',
      'Avoid using a bank account entirely',
    ],
    correctAnswer: 0,
    explanation:
        'UPI enables digital payments and transfers between supported bank accounts.',
  ),

  QuizQuestion(
    question:
        'Which information should you NEVER share with someone asking to complete a UPI payment?',
    options: [
      'Your UPI PIN',
      'The merchant name',
      'The amount you intend to pay',
      'The name of the shop',
    ],
    correctAnswer: 0,
    explanation:
        'Your UPI PIN is confidential and should not be shared with others.',
  ),

  // Add remaining questions here.
];
