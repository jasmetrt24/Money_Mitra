import '../quiz_question.dart';

const List<QuizQuestion> l1m9Quiz = [
  QuizQuestion(
    question: 'What is compound interest?',
    options: [
      'Interest earned only on the original amount',
      'Interest earned on the original amount and accumulated interest',
      'A fee charged by every bank',
      'A tax on purchases',
    ],
    correctAnswer: 1,
    explanation:
        'Compound interest allows interest to accumulate on both the original amount and previously earned interest.',
  ),

  QuizQuestion(
    question: 'What does inflation generally do to purchasing power?',
    options: [
      'Increases it automatically',
      'Leaves it permanently unchanged',
      'Reduces it over time when prices rise',
      'Guarantees higher savings',
    ],
    correctAnswer: 2,
    explanation:
        'When prices rise, the same amount of money generally buys fewer goods and services.',
  ),

  // Add remaining questions here.
];
