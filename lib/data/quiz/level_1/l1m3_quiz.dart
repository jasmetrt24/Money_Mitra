import '../quiz_question.dart';

const List<QuizQuestion> l1m3Quiz = [
  QuizQuestion(
    question: 'What does "pay yourself first" mean?',
    options: [
      'Spend all your money first',
      'Save some money before spending on other things',
      'Borrow money before saving',
      'Only save money at the end of the year',
    ],
    correctAnswer: 1,
    explanation:
        'Paying yourself first means setting aside money for savings before spending the rest.',
  ),

  QuizQuestion(
    question: 'Why is starting to save early useful?',
    options: [
      'It gives compound growth more time to work',
      'It guarantees every investment will make money',
      'It eliminates all financial risk',
      'It means you never need a budget',
    ],
    correctAnswer: 0,
    explanation:
        'Starting early gives savings more time to potentially grow through compounding.',
  ),

  // Add remaining questions here.
];
