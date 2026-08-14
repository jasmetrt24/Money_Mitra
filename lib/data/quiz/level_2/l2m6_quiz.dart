import '../quiz_question.dart';

const List<QuizQuestion> l2m6Quiz = [
  QuizQuestion(
    question: 'What should you compare when evaluating an EMI?',
    options: [
      'Total repayment cost and the cash price',
      'Only the monthly EMI',
      'Only the product color',
      'Only the advertisement',
    ],
    correctAnswer: 0,
    explanation:
        'Looking at the total repayment cost gives a clearer picture of what the purchase actually costs.',
  ),

  QuizQuestion(
    question: 'Why can a small EMI be misleading?',
    options: [
      'The total repayment may be much higher than the cash price',
      'Every EMI is free',
      'EMIs never include interest',
      'The monthly amount is always the full price',
    ],
    correctAnswer: 0,
    explanation:
        'A low monthly payment can hide the fact that the total repayment includes additional costs.',
  ),

  // Add remaining questions here.
];
