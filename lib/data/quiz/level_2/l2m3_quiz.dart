import '../quiz_question.dart';

const List<QuizQuestion> l2m3Quiz = [
  QuizQuestion(
    question: 'Which is a common sign of a phishing message?',
    options: [
      'A request to urgently provide sensitive information',
      'A normal offline conversation',
      'A receipt you expected',
      'A message from a known contact with no unusual request',
    ],
    correctAnswer: 0,
    explanation:
        'Urgent requests for sensitive information are a common warning sign of phishing.',
  ),

  QuizQuestion(
    question: 'What should you do if someone asks for your banking OTP?',
    options: [
      'Share it immediately',
      'Post it online',
      'Keep it private and refuse to share it',
      'Send it to multiple friends',
    ],
    correctAnswer: 2,
    explanation:
        'Banking OTPs are sensitive authentication information and should be kept private.',
  ),

  // Add remaining questions here.
];
