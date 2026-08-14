import '../quiz_question.dart';

const List<QuizQuestion> l2m5Quiz = [
  QuizQuestion(
    question:
        'What is the main difference between a debit card and a credit card?',
    options: [
      'Debit cards generally use available bank funds; credit cards use borrowed credit',
      'Both always use borrowed money',
      'Debit cards can only be used online',
      'Credit cards never need repayment',
    ],
    correctAnswer: 0,
    explanation:
        'Debit transactions generally draw from available funds, while credit card purchases create a balance that must be repaid.',
  ),

  QuizQuestion(
    question: 'What can happen if you carry a credit card balance?',
    options: [
      'Interest charges may apply',
      'The balance automatically disappears',
      'You never need to repay it',
      'Your purchases become free',
    ],
    correctAnswer: 0,
    explanation:
        'Carrying a credit card balance can result in interest charges depending on the card terms.',
  ),

  // Add remaining questions here.
];
