import '../quiz_question.dart';

const List<QuizQuestion> l2m9Quiz = [
  QuizQuestion(
    question: 'Which is the best example of a SMART financial goal?',
    options: [
      'I want to save more someday',
      'I will save ₹6,000 in 6 months',
      'I want to become rich',
      'I should spend less',
    ],
    correctAnswer: 1,
    explanation:
        'Saving ₹6,000 in 6 months is specific and measurable with a clear time frame.',
  ),

  QuizQuestion(
    question:
        'You need ₹12,000 in 12 months. Ignoring interest, how much should you save each month?',
    options: ['₹500', '₹750', '₹1,000', '₹1,500'],
    correctAnswer: 2,
    explanation: '₹12,000 divided by 12 months equals ₹1,000 per month.',
  ),

  // Add remaining questions here.
];
