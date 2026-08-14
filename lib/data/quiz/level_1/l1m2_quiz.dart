import '../quiz_question.dart';

const List<QuizQuestion> l1m2Quiz = [
  QuizQuestion(
    question: 'Which of these is usually a NEED?',
    options: [
      'A new gaming console',
      'Food for daily meals',
      'Designer shoes',
      'A premium phone case',
    ],
    correctAnswer: 1,
    explanation:
        'Food is a basic necessity, while the other options are generally wants.',
  ),

  QuizQuestion(
    question: 'Which question can help you identify a WANT?',
    options: [
      'Can I survive without it?',
      'Is it available online?',
      'Is it expensive?',
      'Does my friend have it?',
    ],
    correctAnswer: 0,
    explanation:
        'Asking whether you can survive without something can help distinguish a want from a need.',
  ),

  // Add remaining questions here.
];
