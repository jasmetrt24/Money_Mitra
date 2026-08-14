import '../quiz_question.dart';

const List<QuizQuestion> l1m8Quiz = [
  QuizQuestion(
    question:
        'What is a fair way to split a ₹1,000 bill equally between 4 friends?',
    options: ['₹100 each', '₹200 each', '₹250 each', '₹500 each'],
    correctAnswer: 2,
    explanation: '₹1,000 divided by 4 people is ₹250 per person.',
  ),

  QuizQuestion(
    question: 'What is a healthy financial boundary with friends?',
    options: [
      'Always lend money when asked',
      'Never discuss money',
      'Only lend what you can reasonably afford to lose',
      'Borrow money to help friends',
    ],
    correctAnswer: 2,
    explanation:
        'You should avoid lending an amount that would create financial difficulty if it were not repaid.',
  ),

  // Add remaining questions here.
];
