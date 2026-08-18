import '../quiz_question.dart';

const List<QuizQuestion> l1m8Quiz = [
  QuizQuestion(
    question: 'What is the main purpose of budgeting?',
    options: [
      'To spend all your money',
      'To avoid using money completely',
      'To control and manage your money',
      'To borrow more money',
    ],
    correctAnswer: 2,
    explanation:
        'Budgeting helps you understand your income and control your spending.',
  ),

  QuizQuestion(
    question: 'Which is the best first step when creating a monthly budget?',
    options: [
      'Buy something you want',
      'List your income and expected expenses',
      'Take a loan',
      'Spend money randomly',
    ],
    correctAnswer: 1,
    explanation:
        'Knowing your income and expenses helps you make a realistic spending plan.',
  ),

  QuizQuestion(
    question: 'What is a Zero-Based Budget?',
    options: [
      'A budget designed for someone who has zero income',
      'A budget where total income minus total expenses and savings equals zero',
      'A budget that eliminates all fun or optional spending',
      'A budget that resets every ten years',
    ],
    correctAnswer: 1,
    explanation:
        'In zero-based budgeting, every amount earned is assigned a job, such as spending, saving, or debt payoff, until no money remains unassigned.',
  ),

  QuizQuestion(
    question: "What does 'cash flow' mean?",
    options: [
      'A type of credit card',
      'The movement of money coming in and going out',
      'The interest earned on savings',
      'The total money in a bank locker',
    ],
    correctAnswer: 1,
    explanation: 'Cash flow simply means money coming in and money going out.',
  ),

  QuizQuestion(
    question: "What does it mean if your cash flow is 'positive'?",
    options: [
      'You are spending more than you earn',
      'You owe money to someone',
      'You have no income at all',
      'You are earning more than you spend',
    ],
    correctAnswer: 3,
    explanation:
        'Positive cash flow means more money is coming in than going out.',
  ),

  QuizQuestion(
    question: "What does 'negative cash flow' mean?",
    options: [
      'Saving more than you earn',
      'Spending more than you earn',
      'Earning without spending',
      'Having zero expenses',
    ],
    correctAnswer: 1,
    explanation:
        'Negative cash flow means expenses are higher than income, which is a warning sign to cut back.',
  ),

  QuizQuestion(
    question: "What is an 'expense'?",
    options: [
      'Money you earn from a part-time job',
      'Money kept safe in a bank',
      'Money you spend on things like food or travel',
      'Money given to you as a gift',
    ],
    correctAnswer: 2,
    explanation:
        'An expense is money going out, spent on things like food, travel, or bills.',
  ),

  QuizQuestion(
    question: "Which is an example of a 'fixed expense'?",
    options: [
      'A one-time gift purchase',
      'Impulse shopping',
      'Movie tickets bought randomly',
      'Monthly rent or subscription fee',
    ],
    correctAnswer: 3,
    explanation:
        'Fixed expenses stay roughly the same each month, like rent or a subscription.',
  ),

  QuizQuestion(
    question: "Which is an example of a 'variable expense'?",
    options: [
      'Insurance premium paid monthly',
      'Eating out, which changes based on how often you go',
      'Rent, which stays the same every month',
      'A loan EMI with a fixed amount',
    ],
    correctAnswer: 1,
    explanation:
        'Variable expenses change from month to month, like eating out or shopping.',
  ),

  QuizQuestion(
    question:
        "Your monthly cash flow has been negative for 3 months straight. What's the smartest way to fix it?",
    options: [
      'Review spending patterns to find and cut unnecessary expenses',
      'Increase spending to feel better',
      'Wait for the problem to fix itself',
      'Stop checking your cash flow altogether',
    ],
    correctAnswer: 0,
    explanation:
        'Reviewing past spending shows exactly where the leaks are, letting you cut those categories and turn cash flow positive again.',
  ),
];
