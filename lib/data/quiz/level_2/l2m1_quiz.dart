import '../quiz_question.dart';

const List<QuizQuestion> l2m1Quiz = [
  QuizQuestion(
    question: 'What does the 50-30-20 rule help you do?',
    options: [
      'Increase your salary',
      'Divide your income into different spending categories',
      'Avoid spending any money',
      'Double your savings',
    ],
    correctAnswer: 1,
    explanation:
        'The 50-30-20 rule is a simple budgeting method that divides your income into 50% for needs, 30% for wants, and 20% for savings and debt repayment.',
  ),

  QuizQuestion(
    question: 'What is the main purpose of the 20% portion?',
    options: [
      'Shopping',
      'Entertainment',
      'Savings and debt repayment',
      'Daily food expenses',
    ],
    correctAnswer: 2,
    explanation:
        'The 20% can be used to build savings, create an emergency fund, invest, or pay down debt.',
  ),

  QuizQuestion(
    question: "Which category does 'eating out at a restaurant' fall under?",
    options: ['Savings', 'Wants', 'Needs', 'Emergency fund'],
    correctAnswer: 1,
    explanation:
        "Eating out isn't essential for survival, so it falls under wants, not needs.",
  ),

  QuizQuestion(
    question: 'Where does money put into a savings account belong?',
    options: ['Fixed expense', 'Needs', 'Savings', 'Wants'],
    correctAnswer: 2,
    explanation:
        'Putting money into a savings account or investment falls directly under the savings category.',
  ),

  QuizQuestion(
    question:
        'If your monthly income is ₹10,000, approximately how much would go toward needs under the 50-30-20 rule?',
    options: ['₹1,000', '₹2,000', '₹3,000', '₹5,000'],
    correctAnswer: 3,
    explanation:
        '50% of ₹10,000 is ₹5,000, which is the suggested amount for essential expenses.',
  ),

  QuizQuestion(
    question:
        'Can the 50-30-20 rule be adjusted based on someone’s personal situation?',
    options: [
      'Yes, it is a guideline that can be adjusted to fit your situation',
      'No, it only works for adults with jobs',
      'Yes, but only if your income doubles',
      'No, the percentages are fixed by law',
    ],
    correctAnswer: 0,
    explanation:
        'The rule is a flexible guideline, not a strict law. You can adjust percentages based on your own situation, such as higher rent costs.',
  ),

  QuizQuestion(
    question:
        'Aarav earns ₹25,000 but spends ₹15,000 on needs. What does this suggest?',
    options: [
      'He is exactly following the 50% needs guideline',
      'His needs are taking up more than the suggested 50%',
      'He is saving 20%',
      'He is spending too little on needs',
    ],
    correctAnswer: 1,
    explanation:
        '50% of ₹25,000 is ₹12,500. Spending ₹15,000 means 60% of his income is going toward needs. The 50-30-20 rule is a guideline, so this may simply mean he needs to adjust the other categories.',
  ),

  QuizQuestion(
    question:
        "You notice your 'needs' spending is regularly crossing 50% of your income. What should you do?",
    options: [
      'Increase spending on wants to balance it out',
      'Ignore it since needs are always fine to overspend on',
      'Stop saving completely',
      'Review expenses and try to reduce needs or cut back on wants',
    ],
    correctAnswer: 3,
    explanation:
        "If needs are taking up more than 50%, it is a sign to review your budget and possibly cut back on the wants category or find ways to reduce essential costs.",
  ),

  QuizQuestion(
    question:
        'In the 50-30-20 rule, which figure should you base your calculations on?',
    options: [
      'Total Gross Income (before taxes)',
      'Net Income (after-tax take-home pay)',
      'Total monthly expenses',
      'Savings balance in the bank',
    ],
    correctAnswer: 1,
    explanation:
        'Using net income ensures your budget is based on the money actually available to spend after taxes and deductions.',
  ),

  QuizQuestion(
    question:
        'Under the 50-30-20 rule, where do minimum loan payments vs. extra debt payments belong?',
    options: [
      'All loan payments go under the 50% Needs category',
      'All loan payments go under the 20% Savings category',
      'Minimum required payments go under Needs (50%); extra principal payments go under Savings/Debt (20%)',
      'Loan payments belong under Wants (30%)',
    ],
    correctAnswer: 2,
    explanation:
        'Minimum required payments are essential obligations, while extra payments toward debt can be treated as part of the savings and debt repayment portion.',
  ),
];
