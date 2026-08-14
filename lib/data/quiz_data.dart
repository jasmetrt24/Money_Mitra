// ============================================================
// QUIZ DATA — 20 modules × 10 MCQs each = 200 questions
// All questions use ₹ and Indian teen scenarios.
//
// Schema:
//   question        — question text
//   options         — List of 4 strings
//   correctAnswer   — 0-based index of correct option
//   explanation     — 1–2 line explanation shown after answering
// ============================================================

class QuizQuestion {
  final String question;
  final List<String> options;
  final int correctAnswer;
  final String explanation;

  const QuizQuestion({
    required this.question,
    required this.options,
    required this.correctAnswer,
    required this.explanation,
  });
}

// ============================================================
// LEVEL 1 — MODULE 1: What is a Budget?
// ============================================================

const List<QuizQuestion> l1m1Questions = [
  QuizQuestion(
    question:
        'Riya gets ₹500 pocket money weekly. She wants to save ₹1,500 in a month. How much should she save each week?',
    options: ['₹350', '₹375', '₹400', '₹450'],
    correctAnswer: 1,
    explanation:
        '₹1,500 ÷ 4 weeks = ₹375/week. Saving a fixed amount weekly makes a monthly goal easier to track.',
  ),
  QuizQuestion(
    question:
        'What is the main purpose of making a budget?',
    options: [
      'To spend all your money quickly',
      'To plan how to use your money wisely',
      'To borrow money from friends',
      'To avoid saving anything',
    ],
    correctAnswer: 1,
    explanation:
        'A budget is a spending plan — it helps you decide in advance how to split money between needs, wants, and savings.',
  ),
  QuizQuestion(
    question:
        'Arjun earns ₹2,000 this month from a summer job. He spends ₹1,400. How much does he save?',
    options: ['₹400', '₹500', '₹600', '₹700'],
    correctAnswer: 2,
    explanation:
        '₹2,000 − ₹1,400 = ₹600. Savings = Income − Expenses. Tracking this is the first step of budgeting.',
  ),
  QuizQuestion(
    question:
        'Which of these is the BEST way to start a budget?',
    options: [
      'Spend first, then see what\'s left',
      'List your income and all expected expenses',
      'Only track big purchases',
      'Ignore pocket money since it\'s small',
    ],
    correctAnswer: 1,
    explanation:
        'Listing income and expenses first gives you a clear picture before you spend — that\'s the foundation of any budget.',
  ),
  QuizQuestion(
    question:
        'Priya follows the 50-30-20 rule for her ₹1,000 pocket money. How much goes to savings?',
    options: ['₹50', '₹100', '₹200', '₹300'],
    correctAnswer: 2,
    explanation:
        '20% of ₹1,000 = ₹200. The 50-30-20 rule: 50% needs, 30% wants, 20% savings — a popular and easy budgeting method.',
  ),
  QuizQuestion(
    question:
        'You receive ₹1,000 pocket money. What should you do FIRST?',
    options: [
      'Spend everything on snacks and games',
      'Create a spending plan (budget)',
      'Lend it all to a friend',
      'Keep it all without a plan',
    ],
    correctAnswer: 1,
    explanation:
        'Creating a budget first ensures you cover needs, set aside savings, and then enjoy wants — instead of running out of money early.',
  ),
  QuizQuestion(
    question:
        'Which of these is NOT a typical budget category?',
    options: ['Needs', 'Wants', 'Savings', 'Debts to repay immediately'],
    correctAnswer: 3,
    explanation:
        'Standard budget categories are Needs, Wants, and Savings. Debts are a reality but aren\'t a standard category for beginner budgets.',
  ),
  QuizQuestion(
    question:
        'Ananya gets ₹600 weekly. She spends ₹250 on needs and ₹200 on wants. How much can she save?',
    options: ['₹100', '₹150', '₹200', '₹250'],
    correctAnswer: 1,
    explanation:
        '₹600 − ₹250 − ₹200 = ₹150. Tracking every expense shows exactly how much you have left to save.',
  ),
  QuizQuestion(
    question:
        'Why is it important to revisit your budget every month?',
    options: [
      'To increase spending each month',
      'Because expenses change and the plan needs adjusting',
      'Budgets are only made once and never changed',
      'To delete savings from the plan',
    ],
    correctAnswer: 1,
    explanation:
        'Expenses like school fees, trips, or festivals vary monthly. Reviewing and adjusting keeps your budget realistic.',
  ),
  QuizQuestion(
    question:
        'Which habit will make your budget most effective?',
    options: [
      'Writing it down and tracking daily spending',
      'Only thinking about it mentally',
      'Budgeting only when you\'re broke',
      'Asking parents to handle all money decisions',
    ],
    correctAnswer: 0,
    explanation:
        'Writing your budget and tracking actual spending daily closes the gap between planning and reality — the #1 budgeting habit.',
  ),
];

// ============================================================
// LEVEL 1 — MODULE 2: Needs vs Wants
// ============================================================

const List<QuizQuestion> l1m2Questions = [
  QuizQuestion(
    question: 'Which of these is a NEED for a school student?',
    options: [
      'New gaming headphones',
      'School stationery and textbooks',
      'Latest sneakers',
      'Streaming subscription',
    ],
    correctAnswer: 1,
    explanation:
        'Needs are essentials required to live and study. Stationery and textbooks are necessary for school.',
  ),
  QuizQuestion(
    question: 'Which of these is a WANT?',
    options: [
      'School uniform',
      'Monthly bus pass to school',
      'New phone upgrade (your old phone works fine)',
      'Medicines when sick',
    ],
    correctAnswer: 2,
    explanation:
        'A want is something nice to have but not essential. A new phone when your old one works is a want.',
  ),
  QuizQuestion(
    question:
        'Kabir has ₹800 and lists: school bag (₹300), movie ticket (₹150), lunch (₹200), comic book (₹100). Which are NEEDS?',
    options: [
      'Movie ticket and comic book',
      'School bag and lunch',
      'Lunch and comic book',
      'All four items',
    ],
    correctAnswer: 1,
    explanation:
        'School bag (essential for school) and lunch (food is a need) are needs. Movies and comic books are wants.',
  ),
  QuizQuestion(
    question:
        'Why is it important to separate needs from wants?',
    options: [
      'To spend more money on wants',
      'So you always cover essentials before luxuries',
      'To avoid saving money',
      'Because wants are always cheaper',
    ],
    correctAnswer: 1,
    explanation:
        'Covering needs first ensures you\'re never short on essentials. Wants come after needs are fulfilled.',
  ),
  QuizQuestion(
    question:
        'Sneha impulsively buys a ₹400 T-shirt she doesn\'t need. This is an example of:',
    options: [
      'Smart shopping',
      'Covering a need',
      'Impulse buying (a want)',
      'Good budgeting',
    ],
    correctAnswer: 2,
    explanation:
        'Impulse buying means purchasing something unplanned. Unplanned spending on non-essentials can drain your budget quickly.',
  ),
  QuizQuestion(
    question: 'Which question helps you decide if something is a need?',
    options: [
      '"Will I look cool with this?"',
      '"Can I survive without this right now?"',
      '"Is this on sale?"',
      '"Do my friends have this?"',
    ],
    correctAnswer: 1,
    explanation:
        'Asking "Can I survive without this?" cuts through emotion and shows whether something is truly essential.',
  ),
  QuizQuestion(
    question:
        'Rohan wants new cricket shoes (₹600) and also needs a school notebook (₹50). He has ₹650. What should he buy first?',
    options: [
      'Cricket shoes, since they cost more',
      'Both at once',
      'Notebook first, since it\'s a need',
      'Neither — save everything',
    ],
    correctAnswer: 2,
    explanation:
        'Always cover needs first. The notebook is a need for school. If money remains, then consider the want.',
  ),
  QuizQuestion(
    question:
        'Which of these can move from a "want" to a "need" over time?',
    options: [
      'Expensive headphones',
      'A data plan when you study online',
      'Brand-name shoes',
      'Cinema tickets',
    ],
    correctAnswer: 1,
    explanation:
        'As school moves online, a data plan becomes a need. Needs and wants can shift based on your life situation.',
  ),
  QuizQuestion(
    question:
        'Aman spends 70% of ₹1,000 pocket money on wants. How much is left for needs and savings?',
    options: ['₹100', '₹200', '₹300', '₹400'],
    correctAnswer: 2,
    explanation:
        '30% of ₹1,000 = ₹300. Spending 70% on wants is risky — it leaves very little for essential needs and zero savings.',
  ),
  QuizQuestion(
    question:
        'Which strategy helps control "want" spending?',
    options: [
      'Buy the item immediately before you change your mind',
      'Wait 24–48 hours before purchasing a want',
      'Always buy wants on credit',
      'Never look at price tags',
    ],
    correctAnswer: 1,
    explanation:
        'The "24-hour rule" — waiting before buying a want — reduces impulse purchases. Many times, you\'ll realize you don\'t need it.',
  ),
];

// ============================================================
// LEVEL 1 — MODULE 3: Saving Habits
// ============================================================

const List<QuizQuestion> l1m3Questions = [
  QuizQuestion(
    question:
        'Deepa saves ₹100 every week. How much will she save in 3 months (12 weeks)?',
    options: ['₹1,000', '₹1,100', '₹1,200', '₹1,500'],
    correctAnswer: 2,
    explanation:
        '₹100 × 12 weeks = ₹1,200. Consistent small savings add up significantly over time.',
  ),
  QuizQuestion(
    question: 'What is the "Pay Yourself First" principle?',
    options: [
      'Spend on yourself before paying bills',
      'Set aside savings immediately when you receive money, before spending',
      'Pay your friends first',
      'Spend all income and save the remainder',
    ],
    correctAnswer: 1,
    explanation:
        '"Pay Yourself First" means saving a fixed amount the moment you receive money, so savings aren\'t skipped.',
  ),
  QuizQuestion(
    question:
        'Rahul saves ₹50 every day. How many days will it take to save ₹1,500?',
    options: ['20 days', '25 days', '30 days', '35 days'],
    correctAnswer: 2,
    explanation:
        '₹1,500 ÷ ₹50 = 30 days. Daily savings challenges are a powerful motivator for teens.',
  ),
  QuizQuestion(
    question:
        'Which is the BEST place for a teenager to keep savings safe?',
    options: [
      'Under the mattress',
      'Spend it before losing it',
      'In a savings account at a bank',
      'Lend it to friends',
    ],
    correctAnswer: 2,
    explanation:
        'A bank savings account keeps money safe and can earn a small interest, making your savings grow even faster.',
  ),
  QuizQuestion(
    question:
        'Priya always saves "whatever is left" at the end of the month. What\'s the problem?',
    options: [
      'Nothing — it\'s a perfect habit',
      'She might spend everything and save nothing',
      'She\'ll save too much',
      'Banks won\'t accept small amounts',
    ],
    correctAnswer: 1,
    explanation:
        'Saving "what\'s left" often means saving nothing. Setting aside a fixed amount first makes saving consistent.',
  ),
  QuizQuestion(
    question:
        'What is an "emergency fund"?',
    options: [
      'Money saved for fun trips',
      'Savings set aside for unexpected expenses like illness or urgent repairs',
      'A government savings scheme',
      'Money borrowed in an emergency',
    ],
    correctAnswer: 1,
    explanation:
        'An emergency fund is a safety net for unexpected costs. Having one prevents you from going into debt during tough times.',
  ),
  QuizQuestion(
    question:
        'Sanjay gets a ₹500 Diwali gift. What\'s the smartest thing to do?',
    options: [
      'Spend it all on sweets and crackers',
      'Save at least a portion (e.g., ₹200) and enjoy the rest',
      'Lend it all to friends',
      'Buy something on impulse',
    ],
    correctAnswer: 1,
    explanation:
        'Saving a portion of windfalls (gifts, bonuses) is a top habit of financially healthy people — enjoy some, save some.',
  ),
  QuizQuestion(
    question:
        'Which savings habit is MOST effective for a student?',
    options: [
      'Save only when you feel like it',
      'Save a fixed percentage of every income (pocket money, gifts)',
      'Save only during exam time',
      'Avoid savings until you get a job',
    ],
    correctAnswer: 1,
    explanation:
        'Saving a fixed percentage consistently — even from small amounts — builds the habit and compounds into significant savings over time.',
  ),
  QuizQuestion(
    question:
        'What is the main benefit of saving early (as a teenager)?',
    options: [
      'You don\'t need to study anymore',
      'More time for money to grow through interest',
      'You can stop earning money',
      'Banks give special prizes to teen savers',
    ],
    correctAnswer: 1,
    explanation:
        'Starting to save early gives your money more time to grow via interest (and later, compounding). Time is your biggest financial advantage.',
  ),
  QuizQuestion(
    question:
        'Meera wants to save ₹3,600 in 6 months. How much should she set aside every month?',
    options: ['₹400', '₹500', '₹600', '₹700'],
    correctAnswer: 2,
    explanation:
        '₹3,600 ÷ 6 months = ₹600/month. Reverse-engineering your savings goal into monthly amounts makes it actionable.',
  ),
];

// ============================================================
// LEVEL 1 — MODULE 4: Income & Expenses
// ============================================================

const List<QuizQuestion> l1m4Questions = [
  QuizQuestion(
    question: 'Which of these is an example of INCOME for a teenager?',
    options: [
      'Buying stationery',
      'Monthly pocket money from parents',
      'Paying bus fare',
      'Buying lunch',
    ],
    correctAnswer: 1,
    explanation:
        'Income is money that comes IN to you. Pocket money from parents is a common source of income for teenagers.',
  ),
  QuizQuestion(
    question: 'What are EXPENSES?',
    options: [
      'Money you earn from work',
      'Money you spend on things',
      'Money saved in a bank',
      'Gifts received from relatives',
    ],
    correctAnswer: 1,
    explanation:
        'Expenses are money that goes OUT — food, transport, entertainment, and anything else you spend on.',
  ),
  QuizQuestion(
    question:
        'Vikram earns ₹2,500 this month and spends ₹2,800. What happened?',
    options: [
      'He saved ₹300',
      'He spent more than he earned — a deficit',
      'He broke even',
      'He earned extra ₹300',
    ],
    correctAnswer: 1,
    explanation:
        'When expenses exceed income, you have a deficit. This means Vikram either dipped into savings or borrowed — both problematic habits.',
  ),
  QuizQuestion(
    question: 'Which of these is a FIXED expense (same amount each month)?',
    options: [
      'Movie tickets',
      'School bus pass fee',
      'Snacks at school',
      'Shopping at a sale',
    ],
    correctAnswer: 1,
    explanation:
        'Fixed expenses stay the same each month. A monthly bus pass is always the same amount, making it easy to budget.',
  ),
  QuizQuestion(
    question: 'Which of these is a VARIABLE expense (changes each month)?',
    options: [
      'Annual school fees paid monthly',
      'Mobile recharge amount',
      'Fixed tiffin subscription',
      'Library membership fee',
    ],
    correctAnswer: 1,
    explanation:
        'Variable expenses change month to month. Data/recharge usage varies — some months you use more, some less.',
  ),
  QuizQuestion(
    question:
        'Aarav wants to know where his ₹1,200 monthly pocket money goes. What should he do?',
    options: [
      'Trust his memory to track spending',
      'Keep a daily record of every expense, even small ones',
      'Only write down amounts over ₹200',
      'Ask his parents to track for him',
    ],
    correctAnswer: 1,
    explanation:
        'Tracking every expense, including small ones like chai or snacks, reveals patterns and stops money leaks.',
  ),
  QuizQuestion(
    question:
        'At the end of the month, if income > expenses, you have a:',
    options: ['Deficit', 'Loan', 'Surplus', 'Debt'],
    correctAnswer: 2,
    explanation:
        'A surplus means you earned more than you spent. This extra money can be saved or invested.',
  ),
  QuizQuestion(
    question:
        'Which is a good strategy when your expenses are higher than your income?',
    options: [
      'Borrow money and worry later',
      'Cut variable expenses and find ways to increase income',
      'Stop saving to cover the gap',
      'Ignore the problem — it will fix itself',
    ],
    correctAnswer: 1,
    explanation:
        'When spending exceeds income, cut non-essential (variable) expenses first and explore earning opportunities like freelancing or part-time work.',
  ),
  QuizQuestion(
    question:
        'Pooja tracks her expenses for a week: ₹80 snacks, ₹40 auto, ₹60 recharge, ₹20 stationary. What\'s her total expense?',
    options: ['₹180', '₹200', '₹220', '₹200'],
    correctAnswer: 1,
    explanation:
        '₹80 + ₹40 + ₹60 + ₹20 = ₹200. Tallying up small daily expenses often reveals how much "small" amounts add up to.',
  ),
  QuizQuestion(
    question:
        'Which tool is most helpful for tracking daily income and expenses?',
    options: [
      'Your memory alone',
      'A notebook or a free expense-tracking app',
      'Your school report card',
      'A calculator only',
    ],
    correctAnswer: 1,
    explanation:
        'A written record or app keeps you accountable. Apps like Walnut or a simple notebook work perfectly for teens.',
  ),
];

// ============================================================
// LEVEL 1 — MODULE 5: Goal Setting
// ============================================================

const List<QuizQuestion> l1m5Questions = [
  QuizQuestion(
    question:
        'Aditi wants to buy a ₹3,000 phone case set in 5 months. How much must she save each month?',
    options: ['₹400', '₹500', '₹600', '₹700'],
    correctAnswer: 2,
    explanation:
        '₹3,000 ÷ 5 months = ₹600/month. Breaking a goal into monthly targets makes it manageable.',
  ),
  QuizQuestion(
    question: 'What makes a financial goal a "SMART" goal?',
    options: [
      'It must involve a lot of money',
      'It is Specific, Measurable, Achievable, Relevant, and Time-bound',
      'It is a goal told to everyone on social media',
      'It must be set by parents',
    ],
    correctAnswer: 1,
    explanation:
        'SMART goals have clear details (Specific), a number to track (Measurable), are realistic (Achievable), matter to you (Relevant), and have a deadline (Time-bound).',
  ),
  QuizQuestion(
    question:
        'Which of these is a SMART savings goal?',
    options: [
      '"I want to be rich someday."',
      '"I will save ₹500 per month for 4 months to buy new cricket gear by August."',
      '"I want to save money."',
      '"I\'ll save whenever I can."',
    ],
    correctAnswer: 1,
    explanation:
        'Option B is specific (cricket gear), measurable (₹500/month), achievable, relevant, and time-bound (4 months, August).',
  ),
  QuizQuestion(
    question:
        'Raj has two goals: save ₹500 for a school trip next month AND save ₹5,000 for a laptop next year. These are examples of:',
    options: [
      'Bad goals',
      'Short-term and long-term goals',
      'Only short-term goals',
      'Unachievable goals',
    ],
    correctAnswer: 1,
    explanation:
        'Short-term goals are achieved within months; long-term goals take a year or more. Having both is a sign of good financial planning.',
  ),
  QuizQuestion(
    question:
        'What is the FIRST step in reaching any savings goal?',
    options: [
      'Spend all your money first',
      'Calculate exactly how much you need and by when',
      'Borrow the amount from a friend',
      'Wait until you have more money',
    ],
    correctAnswer: 1,
    explanation:
        'Knowing the exact amount and deadline lets you work backwards to a weekly or monthly savings target.',
  ),
  QuizQuestion(
    question:
        'Nisha saves for a ₹2,400 sketchbook set at ₹200/month. How many months will it take?',
    options: ['10 months', '11 months', '12 months', '14 months'],
    correctAnswer: 2,
    explanation:
        '₹2,400 ÷ ₹200 = 12 months. Patience and consistency are key — even a year of saving feels fast when there\'s a clear goal.',
  ),
  QuizQuestion(
    question:
        'Which obstacle commonly prevents teenagers from reaching savings goals?',
    options: [
      'Saving too much',
      'Impulse spending on wants before the goal is reached',
      'Having too many goals',
      'Goals being too small',
    ],
    correctAnswer: 1,
    explanation:
        'Impulse purchases are the #1 goal-killer. Keeping your goal visible (e.g., a photo of your target item) helps resist temptation.',
  ),
  QuizQuestion(
    question:
        'Karan is halfway to his ₹4,000 savings goal but gets a ₹500 gift. Should he add it to his goal savings?',
    options: [
      'No, gifts should always be spent on fun',
      'Yes, adding windfalls speeds up reaching the goal',
      'No, it\'s too small to matter',
      'Only if he tells his parents',
    ],
    correctAnswer: 1,
    explanation:
        'Adding unexpected money (gifts, rewards) to a goal fund cuts the time to reach it significantly.',
  ),
  QuizQuestion(
    question:
        'What should you do if you miss a savings target for one month?',
    options: [
      'Abandon the goal',
      'Get back on track next month and make up if possible',
      'Increase spending to "feel better"',
      'Blame parents for not giving enough money',
    ],
    correctAnswer: 1,
    explanation:
        'Missing one month is not failure. Reviewing what went wrong and getting back on track is what separates savers from non-savers.',
  ),
  QuizQuestion(
    question:
        'Once you achieve a savings goal, what\'s the best next step?',
    options: [
      'Stop saving until you need money again',
      'Set a new goal immediately and keep the habit going',
      'Celebrate by spending all your savings',
      'Let parents decide your next goal',
    ],
    correctAnswer: 1,
    explanation:
        'Achieving a goal should be followed by setting the next one. Continuous goal-setting keeps the savings habit alive and growing.',
  ),
];

// ============================================================
// LEVEL 1 — MODULE 6: Pocket Money Planning
// ============================================================

const List<QuizQuestion> l1m6Questions = [
  QuizQuestion(
    question:
        'Tanya gets ₹800 monthly pocket money. She wants to allocate 50% to needs, 30% to wants, and 20% to savings. How much goes to wants?',
    options: ['₹160', '₹200', '₹240', '₹280'],
    correctAnswer: 2,
    explanation:
        '30% of ₹800 = ₹240. The 50-30-20 rule applied to pocket money is one of the easiest budget frameworks for teens.',
  ),
  QuizQuestion(
    question:
        'Which of these will make your ₹500 weekly pocket money last the full week?',
    options: [
      'Spend ₹300 on Monday on snacks',
      'Divide it across the days — about ₹70/day',
      'Spend all on wants and ask for more midweek',
      'Only spend on weekends',
    ],
    correctAnswer: 1,
    explanation:
        'Dividing weekly pocket money by days avoids running out early in the week. It\'s a simple but powerful planning technique.',
  ),
  QuizQuestion(
    question:
        'Suresh gets ₹1,000 per month. School canteen costs ₹400, bus pass ₹150. What\'s left for wants and savings?',
    options: ['₹350', '₹400', '₹450', '₹500'],
    correctAnswer: 2,
    explanation:
        '₹1,000 − ₹400 − ₹150 = ₹450. Always subtract fixed needs first; the remainder is available for wants and savings.',
  ),
  QuizQuestion(
    question:
        'You\'re tempted to buy a ₹350 video game with your ₹500 pocket money. You still need ₹200 for bus fare this week. What should you do?',
    options: [
      'Buy the game — bus fare can wait',
      'Skip the game this week since bus fare is a need',
      'Buy the game and walk to school',
      'Ask a friend to pay your fare',
    ],
    correctAnswer: 1,
    explanation:
        'Transport to school is a need. Always keep enough for needs before spending on wants.',
  ),
  QuizQuestion(
    question:
        'Which is the best strategy for managing pocket money on a day trip with friends?',
    options: [
      'Carry all your money and spend freely',
      'Decide a trip budget in advance and carry only that amount',
      'Borrow from friends during the trip',
      'Don\'t plan — just see how it goes',
    ],
    correctAnswer: 1,
    explanation:
        'Setting a trip budget and carrying only that amount prevents overspending and the regret that follows.',
  ),
  QuizQuestion(
    question:
        'What does "tracking your pocket money" mean?',
    options: [
      'Counting your money every morning',
      'Recording every rupee you spend and receive',
      'Hiding money from your parents',
      'Lending money to friends',
    ],
    correctAnswer: 1,
    explanation:
        'Tracking means writing down every income (received) and expense (spent). This shows patterns and helps you adjust.',
  ),
  QuizQuestion(
    question:
        'Divya often runs out of pocket money by Wednesday each week. The BEST solution is:',
    options: [
      'Ask for more money every week',
      'Track spending and cut unnecessary weekday expenses',
      'Only spend on weekends',
      'Borrow from classmates',
    ],
    correctAnswer: 1,
    explanation:
        'Tracking midweek spending reveals what\'s draining the budget. Cutting one or two small expenses can make the money last the week.',
  ),
  QuizQuestion(
    question:
        'Which of these is a "money leak" — a small unnecessary expense that adds up?',
    options: [
      'Monthly bus pass',
      'School fee',
      'Buying a ₹30 soft drink every day at school',
      'Buying a textbook',
    ],
    correctAnswer: 2,
    explanation:
        '₹30/day × 20 school days = ₹600/month on soft drinks. Small daily indulgences (money leaks) can eat a huge chunk of pocket money.',
  ),
  QuizQuestion(
    question:
        'Ravi saved ₹250 from his ₹800 pocket money this month. What percentage did he save?',
    options: ['About 25%', 'About 30%', 'About 31%', 'About 20%'],
    correctAnswer: 2,
    explanation:
        '₹250 ÷ ₹800 = 31.25% ≈ 31%. Saving over 30% of pocket money as a teen puts you well ahead financially.',
  ),
  QuizQuestion(
    question:
        'What is a "spending journal" useful for?',
    options: [
      'Impressing friends',
      'Seeing exactly where your money goes each day',
      'Keeping a diary of emotions',
      'Storing important documents',
    ],
    correctAnswer: 1,
    explanation:
        'A spending journal (physical or app) reveals habits you might not notice otherwise — the foundation of smart money management.',
  ),
];

// ============================================================
// LEVEL 1 — MODULE 7: Smart Shopping
// ============================================================

const List<QuizQuestion> l1m7Questions = [
  QuizQuestion(
    question:
        'Meena needs a new notebook. Shop A sells it for ₹45, Shop B for ₹35. What\'s the smart choice?',
    options: [
      'Shop A — it must be better quality',
      'Shop B — same item, lower price saves ₹10',
      'Buy from both shops',
      'Don\'t buy — prices are too high',
    ],
    correctAnswer: 1,
    explanation:
        'Comparing prices before buying is one of the easiest ways to save. ₹10 saved per purchase adds up over time.',
  ),
  QuizQuestion(
    question:
        'A store says "BUY 2 GET 1 FREE" on ₹60 erasers. You only need 1. Should you buy 3?',
    options: [
      'Yes — it\'s a great deal always',
      'Only if you genuinely need 2 extra erasers',
      'Yes, sell the extras to friends',
      'No, always avoid any deal',
    ],
    correctAnswer: 1,
    explanation:
        'Deals are only good if you\'d use what you buy. Buying 3 when you need 1 wastes ₹120, not saves money.',
  ),
  QuizQuestion(
    question: 'What is an "impulse buy"?',
    options: [
      'A purchase planned weeks in advance',
      'Buying something unplanned because it caught your attention',
      'Buying essential items',
      'Buying in bulk',
    ],
    correctAnswer: 1,
    explanation:
        'Impulse buys are unplanned, emotion-driven purchases. They are one of the biggest budget busters for teenagers.',
  ),
  QuizQuestion(
    question:
        'Aryan sees a ₹500 hoodie "on sale at 20% off." What did the original price likely be?',
    options: ['₹550', '₹580', '₹625', '₹650'],
    correctAnswer: 2,
    explanation:
        '₹500 = 80% of original. Original = ₹500 ÷ 0.8 = ₹625. Always calculate the original price to evaluate if a deal is real.',
  ),
  QuizQuestion(
    question:
        'Which is the BEST time to buy non-urgent items at a lower price?',
    options: [
      'On your birthday, to feel special',
      'During sales (end of season, festive sales) when discounts are genuine',
      'Always — prices never go up',
      'When you\'re in a rush',
    ],
    correctAnswer: 1,
    explanation:
        'Festive and end-of-season sales (Diwali, Republic Day) offer genuine discounts. Planning purchases around sales saves significant money.',
  ),
  QuizQuestion(
    question:
        'What is comparison shopping?',
    options: [
      'Buying from the first shop you visit',
      'Checking prices from multiple shops before buying',
      'Buying only branded items',
      'Shopping only online',
    ],
    correctAnswer: 1,
    explanation:
        'Comparison shopping means checking at least 2–3 options before buying. It often reveals big price differences for the same item.',
  ),
  QuizQuestion(
    question:
        'A ₹150 product online has ₹60 delivery charges. A local store sells it for ₹200. Where is the better deal?',
    options: [
      'Online — always cheaper',
      'Local store — total online cost is ₹210, which is more',
      'Online — delivery is free if you spend more',
      'Both are the same',
    ],
    correctAnswer: 1,
    explanation:
        '₹150 + ₹60 delivery = ₹210 online vs ₹200 at the local store. Always add shipping before comparing online and offline prices.',
  ),
  QuizQuestion(
    question:
        'What is a "shopping list" useful for?',
    options: [
      'Remembering what to brag about',
      'Avoiding unplanned purchases and sticking to the budget',
      'Buying more than planned',
      'Impressing the cashier',
    ],
    correctAnswer: 1,
    explanation:
        'A shopping list keeps you focused. Studies show shoppers without lists spend 20–30% more due to unplanned items.',
  ),
  QuizQuestion(
    question:
        'Brand A shoes cost ₹1,200 and last 1 year. Brand B costs ₹800 and lasts 6 months. Which is the better value?',
    options: [
      'Brand B — it\'s cheaper upfront',
      'Brand A — it costs ₹100/month vs Brand B\'s ₹133/month, so it\'s better value',
      'Both are equal',
      'Neither is worth buying',
    ],
    correctAnswer: 1,
    explanation:
        'Value = cost ÷ lifespan. Brand A = ₹100/month; Brand B = ₹133/month. Cheaper upfront doesn\'t always mean better value.',
  ),
  QuizQuestion(
    question:
        'What is the danger of shopping while hungry or emotionally upset?',
    options: [
      'You make smarter decisions',
      'You tend to buy more impulsively and spend more than planned',
      'You become a better negotiator',
      'Prices are cheaper when you\'re hungry',
    ],
    correctAnswer: 1,
    explanation:
        'Shopping when hungry or emotional leads to impulsive decisions. Avoid shopping when you\'re in a rushed or emotional state.',
  ),
];

// ============================================================
// LEVEL 1 — MODULE 8: Sharing & Giving
// ============================================================

const List<QuizQuestion> l1m8Questions = [
  QuizQuestion(
    question: 'Why is giving or donating considered part of good financial planning?',
    options: [
      'It reduces your savings too much',
      'It builds empathy and reminds you money is a tool, not an end',
      'Banks reward you for donating',
      'Giving is mandatory by law',
    ],
    correctAnswer: 1,
    explanation:
        'Planned giving (even small amounts) cultivates gratitude and keeps money in perspective. Many financial plans include a "giving" category.',
  ),
  QuizQuestion(
    question:
        'Simran gets ₹1,000 and wants to include giving in her budget. A realistic giving allocation could be:',
    options: [
      '50% (₹500)',
      '5% (₹50)',
      '0% — never give',
      '80% (₹800)',
    ],
    correctAnswer: 1,
    explanation:
        'Even 5% of pocket money (₹50 here) as a giving budget is meaningful and sustainable without straining your finances.',
  ),
  QuizQuestion(
    question:
        'Splitting a dinner bill equally among 5 friends costs ₹120 each. What was the total bill?',
    options: ['₹500', '₹550', '₹600', '₹650'],
    correctAnswer: 2,
    explanation:
        '₹120 × 5 = ₹600. Knowing how to split bills fairly is a practical financial skill you\'ll use frequently with friends.',
  ),
  QuizQuestion(
    question:
        'What does "going Dutch" mean when dining out with friends?',
    options: [
      'One person pays the entire bill',
      'Each person pays for their own share of the bill',
      'The restaurant owner pays',
      'Only the oldest person pays',
    ],
    correctAnswer: 1,
    explanation:
        '"Going Dutch" means splitting costs equally. It\'s a fair and common practice that avoids awkward situations.',
  ),
  QuizQuestion(
    question:
        'Raj\'s 5-person friend group is ordering pizza. Each pizza costs ₹350 and serves 4. How much should each friend pay if they order 2 pizzas?',
    options: ['₹100', '₹120', '₹140', '₹160'],
    correctAnswer: 2,
    explanation:
        '2 pizzas = ₹700 total. ₹700 ÷ 5 friends = ₹140 each. Splitting equally means everyone pays their fair share.',
  ),
  QuizQuestion(
    question:
        'If you lend ₹200 to a friend, what\'s the smartest approach?',
    options: [
      'Never ask for it back to avoid awkwardness',
      'Only lend if you can afford not to get it back',
      'Charge high interest',
      'Tell all your other friends',
    ],
    correctAnswer: 1,
    explanation:
        'Only lend money you\'re financially okay losing. Loans between friends can strain relationships if repayment is delayed.',
  ),
  QuizQuestion(
    question:
        'What is the benefit of planning a group trip with a shared budget?',
    options: [
      'One friend always ends up paying more',
      'Everyone knows the expected costs upfront, preventing surprise expenses',
      'The trip becomes more expensive',
      'Hotels offer discounts for individual payments',
    ],
    correctAnswer: 1,
    explanation:
        'A shared trip budget avoids financial surprises and ensures everyone can comfortably afford the trip.',
  ),
  QuizQuestion(
    question:
        'Which of these is a healthy financial boundary with friends?',
    options: [
      'Never saying no to a friend asking for money',
      'Politely declining if lending would put your own finances at risk',
      'Lending without limits because friends always repay',
      'Hiding your savings from friends',
    ],
    correctAnswer: 1,
    explanation:
        'Financial boundaries mean knowing when to say no. Your financial health comes first; true friends will understand.',
  ),
  QuizQuestion(
    question:
        'How does donating to a cause relate to your personal finances?',
    options: [
      'It has no relation to personal finance',
      'Planned donations keep giving intentional, not impulsive, and within budget',
      'It always makes you poorer',
      'Only rich people should donate',
    ],
    correctAnswer: 1,
    explanation:
        'Including giving in your budget makes it intentional — you\'re choosing to give, not randomly handing money out and regretting it later.',
  ),
  QuizQuestion(
    question:
        'Neha wants to donate ₹100 to a school charity drive but only has ₹100 left for the week\'s bus fare. What should she do?',
    options: [
      'Donate everything and walk to school all week',
      'Skip this time — bus fare is a need; plan giving in next month\'s budget',
      'Borrow ₹100 from a friend to donate',
      'Donate ₹200 to feel better',
    ],
    correctAnswer: 1,
    explanation:
        'Giving is admirable, but needs (transport to school) come first. Budget for giving next month so both goals are met.',
  ),
];

// ============================================================
// LEVEL 1 — MODULE 9: Money & Time
// ============================================================

const List<QuizQuestion> l1m9Questions = [
  QuizQuestion(
    question:
        'Ravi puts ₹1,000 in a savings account at 4% interest per year. How much interest does he earn in 1 year?',
    options: ['₹20', '₹30', '₹40', '₹50'],
    correctAnswer: 2,
    explanation:
        '4% of ₹1,000 = ₹40. Simple interest shows why keeping money in a bank is better than keeping it at home.',
  ),
  QuizQuestion(
    question: 'What is "compound interest"?',
    options: [
      'Interest only on the original amount',
      'Interest earned on both the original amount AND the interest previously earned',
      'A fine for late payments',
      'A type of bank loan',
    ],
    correctAnswer: 1,
    explanation:
        'Compound interest earns interest on interest, making your money grow faster over time — the earlier you start, the more powerful it is.',
  ),
  QuizQuestion(
    question:
        'Priya saves ₹500 at 10% annual compound interest. After 2 years, her savings are approximately:',
    options: ['₹580', '₹600', '₹605', '₹610'],
    correctAnswer: 2,
    explanation:
        'Year 1: ₹500 + ₹50 = ₹550. Year 2: ₹550 + ₹55 = ₹605. Compound interest grows faster than simple interest.',
  ),
  QuizQuestion(
    question: 'Why is time one of the most valuable things in personal finance?',
    options: [
      'Time has no role in finance',
      'The longer money stays invested, the more compound interest grows it',
      'Only time determines how rich you become',
      'Time reduces the value of money always',
    ],
    correctAnswer: 1,
    explanation:
        'Starting to save and invest even 5 years earlier can double your wealth at retirement. Time is a free multiplier.',
  ),
  QuizQuestion(
    question:
        'What is the "Rule of 72"?',
    options: [
      'You must save ₹72 per month',
      'Divide 72 by the interest rate to estimate how many years to double your money',
      'Work for 72 hours per week to get rich',
      'Save 72% of your income',
    ],
    correctAnswer: 1,
    explanation:
        'Rule of 72: 72 ÷ interest rate = years to double. At 8% interest, money doubles in 72 ÷ 8 = 9 years.',
  ),
  QuizQuestion(
    question:
        'Using the Rule of 72, at 6% annual interest, in how many years will ₹5,000 become ₹10,000?',
    options: ['10 years', '12 years', '14 years', '16 years'],
    correctAnswer: 1,
    explanation:
        '72 ÷ 6 = 12 years. The Rule of 72 is a quick mental math trick every saver should know.',
  ),
  QuizQuestion(
    question: 'What does "inflation" mean in simple terms?',
    options: [
      'Prices going down over time',
      'Prices going up over time, so money buys less',
      'Your savings growing automatically',
      'A type of government tax',
    ],
    correctAnswer: 1,
    explanation:
        'Inflation means a ₹100 note buys less next year than today. That\'s why saving alone (without earning interest) slowly makes you poorer.',
  ),
  QuizQuestion(
    question:
        'A ₹20 samosa costs ₹25 next year due to inflation. What is the approximate inflation rate?',
    options: ['15%', '20%', '25%', '30%'],
    correctAnswer: 2,
    explanation:
        'Inflation = (₹25 − ₹20) ÷ ₹20 × 100 = 25%. When prices rise faster than your savings earn, your real purchasing power falls.',
  ),
  QuizQuestion(
    question:
        'Why should teens start saving and investing early?',
    options: [
      'To impress their friends',
      'Because more time means more compound growth and a larger final amount',
      'Early savings earn double interest by law',
      'Banks give special treatment to teen account holders',
    ],
    correctAnswer: 1,
    explanation:
        'Starting at 15 instead of 25 gives 10 extra years of compounding. This difference can result in many lakhs extra at retirement.',
  ),
  QuizQuestion(
    question:
        'What is "opportunity cost" in simple terms?',
    options: [
      'The cost to open a new opportunity',
      'What you give up when you choose one option over another',
      'A hidden bank charge',
      'Money earned from a side opportunity',
    ],
    correctAnswer: 1,
    explanation:
        'Spending ₹500 on a video game means giving up ₹500 in savings and future interest. That\'s the opportunity cost of your choice.',
  ),
];

// ============================================================
// LEVEL 1 — MODULE 10: Building Good Habits
// ============================================================

const List<QuizQuestion> l1m10Questions = [
  QuizQuestion(
    question: 'Which financial habit is hardest to build but most rewarding long-term?',
    options: [
      'Spending freely',
      'Saving consistently every month, even small amounts',
      'Avoiding all banks',
      'Only thinking about money once a year',
    ],
    correctAnswer: 1,
    explanation:
        'Consistent saving, even ₹50 a week, builds the discipline and balance that lead to financial security over time.',
  ),
  QuizQuestion(
    question:
        'What does "living below your means" mean?',
    options: [
      'Being poor',
      'Spending less than you earn so savings are possible',
      'Never spending money',
      'Only buying cheap things',
    ],
    correctAnswer: 1,
    explanation:
        'Living below your means = spending less than income. It\'s not about being cheap — it\'s about having leftover money to grow your wealth.',
  ),
  QuizQuestion(
    question:
        'Which of these is a GOOD financial habit for a teenager?',
    options: [
      'Checking pocket-money balance daily',
      'Spending all money before next week\'s allowance',
      'Borrowing money for non-essential items',
      'Hiding your financial situation from parents',
    ],
    correctAnswer: 0,
    explanation:
        'Regularly checking your balance keeps you aware and in control. Awareness is the foundation of every good financial habit.',
  ),
  QuizQuestion(
    question:
        'What does a "financial review" mean for a student?',
    options: [
      'Getting graded on money topics',
      'Checking how well you stuck to your budget this month',
      'A bank testing your creditworthiness',
      'A school exam on economics',
    ],
    correctAnswer: 1,
    explanation:
        'A monthly financial review compares planned vs actual spending. It shows where you did well and where to improve.',
  ),
  QuizQuestion(
    question:
        'Aarav reviews his budget and notices he\'s spending ₹200 extra on snacks every month. What\'s the BEST habit to build?',
    options: [
      'Ignore it — ₹200 is small',
      'Set a weekly snack limit and stick to it',
      'Stop eating snacks permanently',
      'Ask parents for extra ₹200 every month',
    ],
    correctAnswer: 1,
    explanation:
        'Setting a weekly snack limit addresses the leak without cutting out snacks entirely. Moderation is more sustainable than restriction.',
  ),
  QuizQuestion(
    question:
        'What is the importance of setting up automatic savings (like a standing instruction to your savings account)?',
    options: [
      'It reduces bank fees',
      'It removes the temptation to spend before saving',
      'It earns triple interest',
      'It\'s mandatory for students',
    ],
    correctAnswer: 1,
    explanation:
        'Automating savings ensures money moves before you can spend it — removing willpower from the equation is the most reliable way to save.',
  ),
  QuizQuestion(
    question:
        'Which of these daily habits will improve your finances over 5 years?',
    options: [
      'Buying a ₹40 beverage every school day',
      'Packing your own lunch and saving the canteen money',
      'Checking your friends\' spending habits',
      'Only eating at expensive places on weekends',
    ],
    correctAnswer: 1,
    explanation:
        'Packing lunch (say, saving ₹60/day × 200 school days) = ₹12,000 saved per year. Small daily habits have massive long-term impact.',
  ),
  QuizQuestion(
    question:
        'What is a "money mindset"?',
    options: [
      'Having a lot of money',
      'Your beliefs and attitudes about money that shape how you earn, save, and spend',
      'A mathematical formula for wealth',
      'A memory technique for prices',
    ],
    correctAnswer: 1,
    explanation:
        'A healthy money mindset — believing you can save, grow, and manage money — is as important as financial knowledge. Mindset drives behavior.',
  ),
  QuizQuestion(
    question:
        'Which of these describes a "growth mindset" with money?',
    options: [
      '"I\'m bad at math so I can\'t manage money."',
      '"I can learn to manage money better through practice and mistakes."',
      '"Only rich people can save."',
      '"Money problems are always my parents\' fault."',
    ],
    correctAnswer: 1,
    explanation:
        'A growth mindset means believing skills can be developed. Financial skills can absolutely be learned regardless of your background.',
  ),
  QuizQuestion(
    question:
        'What is the SINGLE most important financial habit to develop as a teenager?',
    options: [
      'Spending on experiences over things',
      'Tracking income and expenses and saving a portion regularly',
      'Investing in the stock market immediately',
      'Avoiding all financial conversations',
    ],
    correctAnswer: 1,
    explanation:
        'Tracking + saving consistently is the foundation of all financial health. Every other financial skill builds on this core habit.',
  ),
];

// ============================================================
// LEVEL 2 — MODULE 1: Banking Basics
// ============================================================

const List<QuizQuestion> l2m1Questions = [
  QuizQuestion(
    question: 'What is the main purpose of a savings bank account?',
    options: [
      'To borrow money',
      'To safely keep money and earn interest on deposits',
      'To pay EMIs for loans',
      'To invest in the stock market',
    ],
    correctAnswer: 1,
    explanation:
        'A savings account keeps your money safe in a bank and earns a small interest (typically 2–4% p.a.) on the balance.',
  ),
  QuizQuestion(
    question:
        'What is the key difference between a savings account and a current account?',
    options: [
      'Current accounts are only for students',
      'Savings accounts earn interest; current accounts don\'t but allow unlimited transactions',
      'Savings accounts have no limits on withdrawals',
      'Current accounts give higher interest',
    ],
    correctAnswer: 1,
    explanation:
        'Savings accounts earn interest and suit individuals. Current accounts are for businesses needing unlimited daily transactions but earn no interest.',
  ),
  QuizQuestion(
    question:
        'Meera\'s bank offers 3.5% per year on her ₹10,000 savings account balance. How much interest will she earn in 1 year?',
    options: ['₹250', '₹300', '₹350', '₹400'],
    correctAnswer: 2,
    explanation:
        '3.5% of ₹10,000 = ₹350. Understanding interest rates helps you choose the best account for your money.',
  ),
  QuizQuestion(
    question: 'What is a "minimum balance" in a bank account?',
    options: [
      'The maximum amount you can deposit',
      'The least amount you must maintain to avoid a penalty fee',
      'The interest you earn per month',
      'A fixed deposit amount',
    ],
    correctAnswer: 1,
    explanation:
        'Banks require a minimum balance in some accounts. If your balance falls below it, a penalty is deducted. Many zero-balance accounts avoid this.',
  ),
  QuizQuestion(
    question: 'Which document is typically required to open a bank account in India?',
    options: [
      'Only a photo is needed',
      'Aadhaar card (or equivalent KYC document) and a passport photo',
      'A rent agreement',
      'School marksheet',
    ],
    correctAnswer: 1,
    explanation:
        'KYC (Know Your Customer) documents like Aadhaar, PAN, or passport are mandatory to open a bank account as per RBI rules.',
  ),
  QuizQuestion(
    question:
        'What is an ATM?',
    options: [
      'A machine that gives loans',
      'Automated Teller Machine — allows cash withdrawal and basic banking without a human teller',
      'A type of savings scheme',
      'A government tax office',
    ],
    correctAnswer: 1,
    explanation:
        'ATMs let you withdraw cash, check balances, and transfer funds 24/7 using your debit card and PIN.',
  ),
  QuizQuestion(
    question:
        'What should you do if you lose your ATM card?',
    options: [
      'Wait and see if someone returns it',
      'Immediately block the card via banking app, net banking, or the bank\'s helpline',
      'Use a friend\'s card instead',
      'Visit the bank next week',
    ],
    correctAnswer: 1,
    explanation:
        'Blocking a lost card immediately prevents unauthorized use. Most banks allow instant blocking via their app or 24/7 helpline.',
  ),
  QuizQuestion(
    question:
        'What is a "passbook" in banking?',
    options: [
      'A password book for online banking',
      'A physical record of all deposits and withdrawals in a bank account',
      'A type of fixed deposit',
      'A debit card',
    ],
    correctAnswer: 1,
    explanation:
        'A passbook is a printed record of your account transactions. Updating it regularly helps you reconcile your spending.',
  ),
  QuizQuestion(
    question:
        'Which is safer for a teenager to keep their savings?',
    options: [
      'Under the bed at home',
      'In a bank savings account',
      'Lent to friends',
      'In a piggy bank only',
    ],
    correctAnswer: 1,
    explanation:
        'A bank savings account is insured by DICGC (up to ₹5 lakh) and earns interest — far safer and more rewarding than home storage.',
  ),
  QuizQuestion(
    question:
        'What is net banking?',
    options: [
      'Banking done with fishing nets',
      'Managing your bank account online through a website or app',
      'Networking with bank employees',
      'A type of loan',
    ],
    correctAnswer: 1,
    explanation:
        'Net banking lets you check balance, transfer money, pay bills, and more — all through a secure website or mobile app.',
  ),
];

// ============================================================
// LEVEL 2 — MODULE 2: UPI & Digital Payments
// ============================================================

const List<QuizQuestion> l2m2Questions = [
  QuizQuestion(
    question: 'What does UPI stand for?',
    options: [
      'Unified Payment Interface',
      'Universal Payment Index',
      'United Payments India',
      'Unique Personal ID',
    ],
    correctAnswer: 0,
    explanation:
        'UPI = Unified Payment Interface. It\'s a real-time payment system developed by NPCI that allows instant bank-to-bank transfers via a mobile app.',
  ),
  QuizQuestion(
    question:
        'Which of these is a popular UPI app in India?',
    options: ['Amazon Prime', 'Google Pay (GPay)', 'Google Maps', 'Ola'],
    correctAnswer: 1,
    explanation:
        'Google Pay, PhonePe, Paytm, and BHIM are popular UPI apps. They allow instant payments using a UPI ID or QR code.',
  ),
  QuizQuestion(
    question:
        'What is a UPI PIN?',
    options: [
      'Your date of birth',
      'A secret 4–6 digit code you create to authorize UPI transactions',
      'Your bank account number',
      'A QR code',
    ],
    correctAnswer: 1,
    explanation:
        'Your UPI PIN is like a digital signature — never share it with anyone, including bank staff. It authorizes every payment you make.',
  ),
  QuizQuestion(
    question:
        'Kavya wants to pay ₹75 to her school canteen using UPI. She should:',
    options: [
      'Send money using the canteen\'s UPI QR code or UPI ID',
      'Hand over her phone to the canteen staff',
      'Share her bank account details verbally',
      'Use a credit card only',
    ],
    correctAnswer: 0,
    explanation:
        'Scan the QR code or type the UPI ID to pay — never hand your phone or share PIN. UPI payments are instant and free.',
  ),
  QuizQuestion(
    question:
        'What should you do immediately after a UPI transaction?',
    options: [
      'Nothing — trust the app',
      'Check the transaction confirmation and balance to ensure correctness',
      'Restart your phone',
      'Send the PIN to the recipient as proof',
    ],
    correctAnswer: 1,
    explanation:
        'Always verify the transaction confirmation and check your bank balance after paying. It takes 2 seconds and catches errors early.',
  ),
  QuizQuestion(
    question:
        'Is there a cost to send money via UPI between individuals in India?',
    options: [
      'Yes, ₹5 per transaction',
      'No — UPI person-to-person transfers are currently free',
      'Yes, 2% of the amount',
      'Only for amounts above ₹1,000',
    ],
    correctAnswer: 1,
    explanation:
        'UPI P2P (person-to-person) transfers are free of charge, making them ideal for splitting bills and small payments.',
  ),
  QuizQuestion(
    question:
        'You receive a UPI payment request (collect request) from an unknown number for ₹500. What should you do?',
    options: [
      'Approve it — it might be money you\'re owed',
      'Decline it — unsolicited collect requests are common scam tactics',
      'Enter your PIN to see who sent it',
      'Send ₹1,000 back as a goodwill gesture',
    ],
    correctAnswer: 1,
    explanation:
        'Collect requests from unknown numbers are fraud. Approving one transfers money FROM you. Always decline unsolicited requests.',
  ),
  QuizQuestion(
    question:
        'Which of these is a safe UPI habit?',
    options: [
      'Sharing your UPI PIN with a trusted friend',
      'Using UPI only on your own device with a screen lock',
      'Saving your UPI PIN in your phone\'s notes',
      'Clicking payment links received via WhatsApp messages',
    ],
    correctAnswer: 1,
    explanation:
        'Always use UPI on your own locked device. Never share your PIN, and never click payment links sent through chats.',
  ),
  QuizQuestion(
    question:
        'What is a UPI ID (VPA)?',
    options: [
      'Your phone\'s IMEI number',
      'A virtual address (like yourname@bankname) that receives UPI payments',
      'A government ID for digital payments',
      'A credit score',
    ],
    correctAnswer: 1,
    explanation:
        'A UPI ID (Virtual Payment Address) like "riya@okicici" is your payment address. Share this instead of your account number to receive money safely.',
  ),
  QuizQuestion(
    question:
        'Aakash sends ₹200 via UPI to the wrong person. What should he do first?',
    options: [
      'Panic and delete the app',
      'Contact the recipient politely and request a refund; if they refuse, raise a dispute via the UPI app',
      'Nothing — UPI mistakes are irreversible always',
      'Wait for RBI to reverse it automatically',
    ],
    correctAnswer: 1,
    explanation:
        'Contact the accidental recipient first. If no response or refusal, use the UPI app\'s dispute/raise issue feature to escalate to the bank.',
  ),
];

// ============================================================
// LEVEL 2 — MODULE 3: Spotting Online Scams
// ============================================================

const List<QuizQuestion> l2m3Questions = [
  QuizQuestion(
    question:
        'You receive a WhatsApp message: "Congratulations! You won ₹1,00,000. Click here to claim." What is this most likely?',
    options: [
      'A genuine lottery win',
      'A phishing/scam message designed to steal your money or details',
      'A bank promotion',
      'A government scheme',
    ],
    correctAnswer: 1,
    explanation:
        'Unsolicited "you\'ve won" messages are almost always scams. No legitimate lottery contacts you out of nowhere via WhatsApp.',
  ),
  QuizQuestion(
    question:
        'A caller claiming to be an "RBI officer" asks for your Aadhaar number and OTP. What should you do?',
    options: [
      'Provide the details — RBI officers are trustworthy',
      'Hang up immediately — RBI never asks for personal financial details by phone',
      'Give only the Aadhaar number, not the OTP',
      'Transfer money to the account they provide',
    ],
    correctAnswer: 1,
    explanation:
        'RBI, banks, or government offices never ask for OTPs, PINs, or passwords over the phone. This is a social engineering scam.',
  ),
  QuizQuestion(
    question:
        'What is "phishing"?',
    options: [
      'A type of fishing sport',
      'Fake websites or messages that trick you into entering personal/financial details',
      'An RBI savings scheme',
      'A banking fee',
    ],
    correctAnswer: 1,
    explanation:
        'Phishing uses fake emails, messages, or websites mimicking real banks/apps to steal login credentials and financial details.',
  ),
  QuizQuestion(
    question:
        'Which red flag indicates a possible online payment scam?',
    options: [
      'Seller has many positive verified reviews',
      'Seller asks you to pay via UPI but then refuses to deliver until you pay extra "taxes"',
      'Website has an HTTPS padlock',
      'Payment link directs to the official bank website',
    ],
    correctAnswer: 1,
    explanation:
        '"Pay advance + extra fees to release your order" is a classic advance-fee scam. Legitimate sellers never demand multiple payments before delivery.',
  ),
  QuizQuestion(
    question:
        'An OTP (One Time Password) arrives on your phone. A caller asks you to read it aloud. What should you do?',
    options: [
      'Read it out if the caller seems friendly',
      'Never share an OTP with anyone — it\'s for your use only',
      'Share only the first two digits',
      'Give it if the caller knows your name',
    ],
    correctAnswer: 1,
    explanation:
        'An OTP is a single-use password valid for minutes. Sharing it hands over control of your account. Banks state this in every OTP message.',
  ),
  QuizQuestion(
    question:
        'You\'re buying second-hand earphones via an online group. The seller asks for full payment before shipping. What\'s the safest approach?',
    options: [
      'Pay immediately — sellers need money urgently',
      'Use a cash-on-delivery option or meet in person for the exchange',
      'Pay double as a trust gesture',
      'Share your Aadhaar card as security',
    ],
    correctAnswer: 1,
    explanation:
        'Cash-on-delivery or in-person exchange eliminates the risk of paying and receiving nothing. Be cautious with pre-payment to strangers online.',
  ),
  QuizQuestion(
    question:
        'What is a "deepfake" scam in the context of online fraud?',
    options: [
      'A scam involving fake deep-sea investments',
      'Using AI-generated fake audio or video of someone you know to trick you into sending money',
      'A very elaborate bank hack',
      'A scam targeting only the elderly',
    ],
    correctAnswer: 1,
    explanation:
        'Deepfake scams use realistic AI-generated videos/audio of trusted people (relatives, friends) to urgently ask for money transfers.',
  ),
  QuizQuestion(
    question:
        'Which practice keeps your UPI account safest?',
    options: [
      'Using the same PIN for UPI and other apps',
      'Changing your UPI PIN periodically and never sharing it',
      'Writing your PIN on a sticky note on your phone',
      'Sharing your UPI PIN with your parent for safety',
    ],
    correctAnswer: 1,
    explanation:
        'Periodic PIN changes limit damage if your PIN is ever seen by someone. Never write it down or share it — not even with family.',
  ),
  QuizQuestion(
    question:
        'Riya got a ₹1 credit into her account followed by a call saying "Confirm receipt to unlock ₹10,000." This is:',
    options: [
      'A genuine bank offer',
      'A "confirm receipt" scam — the ₹1 is bait; approving anything would debit your account',
      'A UPI cashback',
      'A government transfer test',
    ],
    correctAnswer: 1,
    explanation:
        'Fraudsters send tiny credits to gain trust, then trick you into authorizing a transaction that actually debits your account. Never approve unknown requests.',
  ),
  QuizQuestion(
    question:
        'Where should you report a UPI payment fraud in India?',
    options: [
      'To your class teacher',
      'To the National Cyber Crime Reporting Portal (cybercrime.gov.in) or by calling 1930',
      'Only to your bank directly and nowhere else',
      'Post about it on social media and wait',
    ],
    correctAnswer: 1,
    explanation:
        'India\'s National Cyber Crime helpline is 1930 and cybercrime.gov.in. Reporting quickly increases the chances of recovering lost money.',
  ),
];

// ============================================================
// LEVEL 2 — MODULE 4: Budgeting Apps & Tracking
// ============================================================

const List<QuizQuestion> l2m4Questions = [
  QuizQuestion(
    question:
        'What is the main advantage of using a budgeting app over a paper notebook?',
    options: [
      'Apps are always more expensive',
      'Apps can auto-categorize expenses, send alerts, and show spending charts instantly',
      'Paper notebooks earn interest',
      'Apps require a bank account to function',
    ],
    correctAnswer: 1,
    explanation:
        'Good budgeting apps automate tracking, categorize spending, and visualize data — making it easier to stay on top of your finances.',
  ),
  QuizQuestion(
    question:
        'Which of these is a popular expense-tracking app available in India?',
    options: ['Snapchat', 'Walnut / Money Manager', 'TikTok', 'Instagram'],
    correctAnswer: 1,
    explanation:
        'Apps like Walnut, Money Manager, and YNAB help track expenses. Many link directly to Indian bank accounts to auto-import transactions.',
  ),
  QuizQuestion(
    question:
        'Priya spends ₹800/month on food, ₹300 on transport, ₹200 on entertainment. A budgeting app would show the LARGEST category is:',
    options: ['Transport', 'Entertainment', 'Food', 'All equal'],
    correctAnswer: 2,
    explanation:
        'Food at ₹800 is the largest category. Seeing categories visually in an app immediately shows where the most money goes.',
  ),
  QuizQuestion(
    question:
        'What does "categorizing expenses" mean in a budgeting app?',
    options: [
      'Ranking expenses from most to least enjoyable',
      'Grouping spending into labels like Food, Transport, Entertainment to identify patterns',
      'Deleting unnecessary expenses',
      'Sorting expenses alphabetically',
    ],
    correctAnswer: 1,
    explanation:
        'Categorization groups similar expenses together so you can see, for example, that you\'re spending ₹400 on coffee that you could cut.',
  ),
  QuizQuestion(
    question:
        'Aryan gets a notification: "You\'ve spent 80% of your ₹500 entertainment budget." What should he do?',
    options: [
      'Ignore it — notifications are annoying',
      'Pause entertainment spending for the rest of the month to stay within budget',
      'Increase the entertainment budget immediately',
      'Delete the app',
    ],
    correctAnswer: 1,
    explanation:
        'Budget alerts are the most powerful feature of budgeting apps — they notify you before you overspend, not after.',
  ),
  QuizQuestion(
    question:
        'What is a "spending report" in a budgeting app?',
    options: [
      'A report card from your school',
      'A summary of all your expenses over a time period (week/month)',
      'A bank loan application',
      'A list of items to buy',
    ],
    correctAnswer: 1,
    explanation:
        'A monthly spending report shows where all your money went. Reviewing it monthly is a cornerstone of good money management.',
  ),
  QuizQuestion(
    question:
        'Is it safe to link a budgeting app to your bank account?',
    options: [
      'Never — it always leads to fraud',
      'Yes, if the app is trusted, uses read-only access, and has good reviews',
      'Only link if the app is free',
      'Banks don\'t allow this in India',
    ],
    correctAnswer: 1,
    explanation:
        'Reputable apps use read-only bank access for transaction import — they can\'t move money. Always check app permissions and reviews before linking.',
  ),
  QuizQuestion(
    question:
        'What does "zero-based budgeting" mean?',
    options: [
      'Spending zero money each month',
      'Assigning every rupee of income to a specific category until income minus allocations = zero',
      'Saving 100% of income',
      'Using zero apps and only cash',
    ],
    correctAnswer: 1,
    explanation:
        'Zero-based budgeting means every rupee has a "job" — needs, wants, savings, giving. Income − all allocations = 0. Nothing is unaccounted for.',
  ),
  QuizQuestion(
    question:
        'Divya uses a free Google Sheet to track her ₹800 weekly pocket money. Is this a valid budgeting tool?',
    options: [
      'No — only paid apps work',
      'Yes — a spreadsheet is perfectly effective for tracking income and expenses',
      'Only if linked to a bank',
      'No — Google Sheets is not for finance',
    ],
    correctAnswer: 1,
    explanation:
        'A spreadsheet is an excellent budgeting tool — free, flexible, and powerful. The best tool is the one you\'ll actually use consistently.',
  ),
  QuizQuestion(
    question:
        'Rohan tracks his expenses for a month and finds he spends ₹350 on chai and snacks daily. Annually, that\'s:',
    options: ['₹1,27,750', '₹1,27,750', '₹1,27,750', '₹1,27,750'],
    correctAnswer: 0,
    explanation:
        '₹350 × 365 = ₹1,27,750 per year. Tracking reveals how small daily habits compound into very large annual numbers — eye-opening motivation to change.',
  ),
];

// ============================================================
// LEVEL 2 — MODULE 5: Credit vs Debit
// ============================================================

const List<QuizQuestion> l2m5Questions = [
  QuizQuestion(
    question: 'What is a DEBIT card?',
    options: [
      'A card that lets you borrow money from the bank',
      'A card linked to your bank account that uses your own money for payments',
      'A card that gives you a monthly credit limit',
      'A card only for online use',
    ],
    correctAnswer: 1,
    explanation:
        'A debit card draws directly from your bank account balance. You can only spend what you already have.',
  ),
  QuizQuestion(
    question: 'What is a CREDIT card?',
    options: [
      'A card that uses your own savings',
      'A card that lets you borrow money from the bank up to a set limit, to be repaid later',
      'A prepaid card loaded with fixed money',
      'A card given only to senior citizens',
    ],
    correctAnswer: 1,
    explanation:
        'A credit card is essentially a short-term loan. The bank pays for your purchase, and you repay by the due date — ideally in full.',
  ),
  QuizQuestion(
    question:
        'Rohit pays ₹3,000 using his debit card. His account balance was ₹3,500. What is his balance after?',
    options: ['₹3,500', '₹1,000', '₹500', '₹0'],
    correctAnswer: 2,
    explanation:
        '₹3,500 − ₹3,000 = ₹500. Debit card transactions reduce your available balance immediately.',
  ),
  QuizQuestion(
    question:
        'What happens if you don\'t pay your credit card bill in full by the due date?',
    options: [
      'Nothing — the bank is flexible',
      'Interest is charged on the outstanding amount, often at 24–42% annually',
      'The credit card gets cancelled',
      'The bill is automatically paid by the bank',
    ],
    correctAnswer: 1,
    explanation:
        'Credit card interest rates in India are among the highest (often 3–3.5% per month = ~36–42% annually). Always pay in full to avoid this trap.',
  ),
  QuizQuestion(
    question:
        'What is a "credit limit" on a credit card?',
    options: [
      'The maximum amount you can earn',
      'The maximum amount the bank allows you to borrow at one time',
      'The interest rate you\'re charged',
      'The minimum monthly payment due',
    ],
    correctAnswer: 1,
    explanation:
        'A credit limit (e.g., ₹50,000) is the ceiling for your total outstanding balance. Exceeding it incurs over-limit fees.',
  ),
  QuizQuestion(
    question:
        'Which card is safer for a teenager learning to manage money?',
    options: [
      'Credit card — it builds credit score',
      'Debit card — you can only spend what you have, limiting overspending',
      'Both are equally risky',
      'Neither — use only cash',
    ],
    correctAnswer: 1,
    explanation:
        'Debit cards are safer for beginners because they\'re tied to real money. Credit cards require discipline to avoid debt — better to learn with debit first.',
  ),
  QuizQuestion(
    question:
        'What is a "credit score" in India?',
    options: [
      'Your school exam percentage',
      'A number (300–900) indicating how reliably you repay debts',
      'The number of credit cards you own',
      'Your savings account balance',
    ],
    correctAnswer: 1,
    explanation:
        'A CIBIL score (300–900) reflects your credit repayment history. A score above 750 is considered good and helps you get loans at better rates later.',
  ),
  QuizQuestion(
    question:
        'Neha has a credit card with a ₹20,000 limit but only uses ₹2,000 monthly and pays in full each month. This is:',
    options: [
      'Irresponsible — she should use the full limit',
      'Smart — low utilization and full payment builds a good credit score',
      'Wasteful — she should cancel the card',
      'Impossible — banks don\'t allow partial usage',
    ],
    correctAnswer: 1,
    explanation:
        'Using a small portion of the credit limit (under 30%) and paying in full each month is the ideal credit card habit for building a strong score.',
  ),
  QuizQuestion(
    question:
        'What is the "minimum due" on a credit card bill?',
    options: [
      'The full outstanding balance',
      'A small fraction (e.g., 5%) of the bill you must pay to avoid a late fee — but interest still accumulates on the rest',
      'The next month\'s spending limit',
      'The bank\'s profit from your account',
    ],
    correctAnswer: 1,
    explanation:
        'Paying only the minimum due avoids late fees but incurs heavy interest on the remaining balance. Always try to pay the full bill.',
  ),
  QuizQuestion(
    question:
        'Which of these is an advantage of a credit card used responsibly?',
    options: [
      'Unlimited spending with no repayment',
      'Reward points, cashback, and building a credit score for future loans',
      'Free money from the bank',
      'Interest-free loans forever',
    ],
    correctAnswer: 1,
    explanation:
        'Used wisely, credit cards offer cashback, rewards, and help build a credit history. The key is full and on-time repayment every month.',
  ),
];

// ============================================================
// LEVEL 2 — MODULE 6: The EMI Trap
// ============================================================

const List<QuizQuestion> l2m6Questions = [
  QuizQuestion(
    question: 'What does EMI stand for?',
    options: [
      'Easy Monthly Income',
      'Equated Monthly Installment',
      'Extra Money Interest',
      'Equal Money Investment',
    ],
    correctAnswer: 1,
    explanation:
        'EMI = Equated Monthly Installment. It\'s a fixed monthly payment you make to repay a loan over a set number of months.',
  ),
  QuizQuestion(
    question:
        'Kavya buys a ₹10,000 phone on a 12-month EMI at 12% annual interest. Approximately how much extra does she pay?',
    options: ['₹600', '₹700', '₹1,200', '₹2,000'],
    correctAnswer: 2,
    explanation:
        'At 12% per year on a flat-rate basis: ₹10,000 × 12% = ₹1,200 extra in interest. EMIs always cost more than paying upfront.',
  ),
  QuizQuestion(
    question:
        '"No Cost EMI" sounds free. What is often hidden?',
    options: [
      'Nothing — it is truly free',
      'Processing fees, loss of cashback/discount, or higher product price that offsets the "zero interest"',
      'Extra months are added secretly',
      'The EMI is paid by the government',
    ],
    correctAnswer: 1,
    explanation:
        '"No Cost EMI" is rarely truly free. Merchants often cancel applicable discounts or banks add processing fees that amount to hidden interest.',
  ),
  QuizQuestion(
    question:
        'Aryan\'s monthly pocket money is ₹2,000. He wants an EMI of ₹1,500/month for a new phone. Is this wise?',
    options: [
      'Yes — the phone is a good investment',
      'No — an EMI that\'s 75% of income leaves almost nothing for needs and savings',
      'Yes — EMIs are always cheap',
      'No — he should take two EMIs instead',
    ],
    correctAnswer: 1,
    explanation:
        'Financial advisors suggest keeping total EMIs under 40% of income. ₹1,500 is 75% of ₹2,000 — dangerously high and leaves no room for needs.',
  ),
  QuizQuestion(
    question:
        'What is the "true cost" of an item bought on EMI?',
    options: [
      'The sticker price of the item',
      'The total of all EMI payments including interest and any fees',
      'The GST on the item',
      'The cost of the store\'s service',
    ],
    correctAnswer: 1,
    explanation:
        'True cost = total EMI payments + any fees. Always calculate this before buying on EMI to understand what you\'re really paying.',
  ),
  QuizQuestion(
    question:
        'Which is a safer alternative to buying a phone on a high-interest EMI?',
    options: [
      'Buy immediately and worry about repayment later',
      'Save monthly until you can pay cash, or use a zero-interest offer from a reputable source',
      'Take a personal loan with 20% interest',
      'Borrow from multiple friends simultaneously',
    ],
    correctAnswer: 1,
    explanation:
        'Saving and paying cash avoids all interest costs. Zero-interest EMIs from trusted banks (with no hidden fees) can be acceptable if saving takes too long.',
  ),
  QuizQuestion(
    question:
        'What happens to your finances if you miss an EMI payment?',
    options: [
      'Nothing — banks are patient',
      'Penalties are charged, interest accumulates, and your credit score gets damaged',
      'The EMI is waived for that month',
      'The bank pays it for you',
    ],
    correctAnswer: 1,
    explanation:
        'Missing EMIs triggers late fees, compound interest, and a drop in your CIBIL score — making future loans harder and more expensive to get.',
  ),
  QuizQuestion(
    question:
        'Which type of item is MOST suited for an EMI purchase?',
    options: [
      'A pizza for tonight\'s party',
      'A ₹50,000 laptop genuinely needed for college that you can\'t save for in time',
      'New clothes for a friend\'s wedding',
      'Gaming accessories',
    ],
    correctAnswer: 1,
    explanation:
        'EMIs make sense only for high-value, essential items where waiting to save is impractical and you can comfortably afford the monthly payment.',
  ),
  QuizQuestion(
    question:
        'Priya is comparing two phones: Phone A at ₹15,000 cash, or Phone B at ₹1,500 EMI for 12 months. What is Phone B\'s total cost?',
    options: ['₹15,000', '₹16,500', '₹18,000', '₹12,000'],
    correctAnswer: 2,
    explanation:
        '₹1,500 × 12 = ₹18,000. Phone B costs ₹3,000 more than Phone A over 12 months — the true price of the "easy payment" option.',
  ),
  QuizQuestion(
    question:
        'What is "debt trap"?',
    options: [
      'Saving too much money',
      'A cycle where you borrow to repay previous debts, creating increasing financial pressure',
      'A government savings scheme',
      'A type of bank deposit',
    ],
    correctAnswer: 1,
    explanation:
        'A debt trap spirals: you take EMI A, can\'t repay, take EMI B to cover it, and so on. Avoiding unnecessary EMIs is the best way to never enter one.',
  ),
];

// ============================================================
// LEVEL 2 — MODULE 7: Saving vs Investing
// ============================================================

const List<QuizQuestion> l2m7Questions = [
  QuizQuestion(
    question: 'What is the key difference between saving and investing?',
    options: [
      'Saving earns nothing; investing always loses money',
      'Saving preserves money with low risk/return; investing grows money with higher risk/return',
      'Investing is only for adults; saving is only for teens',
      'Both are exactly the same',
    ],
    correctAnswer: 1,
    explanation:
        'Saving (bank account) is safe but earns little. Investing (mutual funds, stocks) carries risk but aims for much higher long-term growth.',
  ),
  QuizQuestion(
    question: 'For which goal would saving (not investing) be more appropriate?',
    options: [
      'Building wealth over 20 years',
      'Paying school fees next month',
      'Retirement planning',
      'A 10-year financial goal',
    ],
    correctAnswer: 1,
    explanation:
        'Short-term goals (1–3 months) need certainty — saving is right. Investing is for goals 3+ years away where you can ride market ups and downs.',
  ),
  QuizQuestion(
    question: 'What is a "return" in the context of investing?',
    options: [
      'Returning an item to a shop',
      'The profit or growth earned on an investment over time',
      'A tax refund',
      'An item you send back to the bank',
    ],
    correctAnswer: 1,
    explanation:
        'Return is how much your investment grew. If you invested ₹1,000 and it became ₹1,120, the return is ₹120 (or 12%).',
  ),
  QuizQuestion(
    question: 'What does "risk" mean in investing?',
    options: [
      'The chance of getting arrested',
      'The possibility that the value of your investment could fall below what you put in',
      'The annual fee charged by a broker',
      'The complexity of understanding investment options',
    ],
    correctAnswer: 1,
    explanation:
        'Risk in investing means you might get back less than you invested. Higher potential return usually comes with higher risk.',
  ),
  QuizQuestion(
    question:
        'If Ananya saves ₹500 in a bank at 4% and invests ₹500 in a mutual fund earning 12%, which grows more in 5 years?',
    options: [
      'Bank savings — always safer',
      'The mutual fund investment — higher return leads to greater growth',
      'Both grow equally',
      'The bank, because it\'s risk-free',
    ],
    correctAnswer: 1,
    explanation:
        'Higher return = more growth over time. ₹500 at 12% for 5 years ≈ ₹882; at 4%, ≈ ₹608. The gap grows larger the longer the time horizon.',
  ),
  QuizQuestion(
    question:
        'What is "diversification" in investing?',
    options: [
      'Investing all your money in one company',
      'Spreading money across different types of investments to reduce risk',
      'Changing investments every week',
      'Borrowing to invest',
    ],
    correctAnswer: 1,
    explanation:
        'Diversification (eggs in different baskets) means if one investment falls, others may rise. It reduces the impact of any single loss.',
  ),
  QuizQuestion(
    question:
        'Which of these is a beginner-friendly investment option in India?',
    options: [
      'Buying individual stocks on speculation',
      'A mutual fund via a SIP (Systematic Investment Plan)',
      'Lending money to unknown individuals at high interest',
      'Buying foreign currencies',
    ],
    correctAnswer: 1,
    explanation:
        'SIPs in mutual funds are beginner-friendly — start with as little as ₹500/month, professionally managed, and diversified automatically.',
  ),
  QuizQuestion(
    question:
        'Why should teenagers start investing as early as possible?',
    options: [
      'To show off to friends',
      'Because compound growth over many years builds significantly more wealth',
      'Banks force teenagers to invest',
      'Early investors get government bonuses',
    ],
    correctAnswer: 1,
    explanation:
        'Every year earlier you invest, the more time compound growth has to work. Starting at 18 vs 28 can result in multiple times more wealth at retirement.',
  ),
  QuizQuestion(
    question:
        'Which of these is NOT a good reason to invest?',
    options: [
      'To beat inflation over time',
      'To grow wealth for long-term goals',
      'To make quick profits in a week guaranteed',
      'To build a retirement corpus',
    ],
    correctAnswer: 2,
    explanation:
        '"Guaranteed quick profits" is a hallmark of investment scams. Legitimate investing is for the long term and involves some risk.',
  ),
  QuizQuestion(
    question:
        'What should you build BEFORE you start investing?',
    options: [
      'A list of stocks to buy',
      'An emergency fund with 3–6 months of expenses in savings',
      'A loan from the bank',
      'A credit card',
    ],
    correctAnswer: 1,
    explanation:
        'An emergency fund is essential before investing. Without it, you might be forced to sell investments at a loss to cover an unexpected expense.',
  ),
];

// ============================================================
// LEVEL 2 — MODULE 8: SIP, RD & PPF
// ============================================================

const List<QuizQuestion> l2m8Questions = [
  QuizQuestion(
    question: 'What does SIP stand for?',
    options: [
      'Savings and Investment Plan',
      'Systematic Investment Plan',
      'Simple Interest Program',
      'Secured Investment Portfolio',
    ],
    correctAnswer: 1,
    explanation:
        'SIP = Systematic Investment Plan. You invest a fixed amount regularly (monthly) into a mutual fund — perfect for salaried individuals and teens.',
  ),
  QuizQuestion(
    question:
        'Ravi starts a SIP of ₹500/month. After 12 months, how much has he invested in total (ignoring returns)?',
    options: ['₹5,000', '₹5,500', '₹6,000', '₹7,000'],
    correctAnswer: 2,
    explanation:
        '₹500 × 12 months = ₹6,000 invested. With returns, the actual value should be higher depending on market performance.',
  ),
  QuizQuestion(
    question: 'What is a Recurring Deposit (RD)?',
    options: [
      'A type of credit card',
      'A bank scheme where you deposit a fixed amount monthly and earn guaranteed interest at maturity',
      'A government tax',
      'A loan taken in installments',
    ],
    correctAnswer: 1,
    explanation:
        'An RD is offered by banks — deposit a fixed amount monthly (e.g., ₹500) for a fixed tenure and receive principal + interest at maturity. Low risk.',
  ),
  QuizQuestion(
    question:
        'Priya starts an RD of ₹300/month at 6.5% for 1 year. Is this a good beginner savings option?',
    options: [
      'No — RDs are too complicated for beginners',
      'Yes — RDs are simple, safe, and build a consistent savings habit',
      'No — 6.5% is too high to be real',
      'Only if she has a job',
    ],
    correctAnswer: 1,
    explanation:
        'RDs are ideal for beginners — guaranteed returns, no market risk, and available at any bank, including post offices with very low minimums.',
  ),
  QuizQuestion(
    question: 'What is PPF (Public Provident Fund)?',
    options: [
      'A private bank fixed deposit',
      'A government-backed long-term savings scheme offering tax-free returns (currently ~7.1% p.a.)',
      'A type of insurance',
      'A mutual fund scheme',
    ],
    correctAnswer: 1,
    explanation:
        'PPF is a government scheme, 15-year lock-in, with tax-free interest (~7.1%). It\'s one of the safest long-term savings tools in India.',
  ),
  QuizQuestion(
    question:
        'What is the minimum annual deposit to maintain a PPF account?',
    options: ['₹100', '₹500', '₹1,000', '₹5,000'],
    correctAnswer: 1,
    explanation:
        'PPF requires a minimum of ₹500/year and allows up to ₹1.5 lakh/year. Even small annual contributions over 15 years build substantial tax-free wealth.',
  ),
  QuizQuestion(
    question:
        'Which of these has the HIGHEST potential return but HIGHEST risk?',
    options: [
      'PPF (Public Provident Fund)',
      'Recurring Deposit (RD)',
      'Equity Mutual Fund via SIP',
      'Savings Bank Account',
    ],
    correctAnswer: 2,
    explanation:
        'Equity mutual funds invest in shares — they can return 12%+ over long periods but can also fall in the short term. Highest risk, highest potential reward.',
  ),
  QuizQuestion(
    question:
        'What is "rupee cost averaging" in a SIP?',
    options: [
      'Paying the same price for every unit always',
      'Because you invest a fixed amount monthly, you buy more units when prices are low and fewer when high — averaging the cost over time',
      'A method to convert rupees to dollars',
      'A bank fee for processing SIPs',
    ],
    correctAnswer: 1,
    explanation:
        'Rupee cost averaging reduces the impact of market volatility. You automatically buy more units when markets dip — a key SIP advantage.',
  ),
  QuizQuestion(
    question:
        'For which of these goals is PPF MOST suitable?',
    options: [
      'Saving for next month\'s school trip',
      'Building a college fund over 15 years',
      'Emergency fund for next week',
      'Daily pocket money management',
    ],
    correctAnswer: 1,
    explanation:
        'PPF\'s 15-year lock-in makes it perfect for very long-term goals like college or retirement — not for short-term needs.',
  ),
  QuizQuestion(
    question:
        'Which savings/investment option is available at a Post Office in India?',
    options: [
      'Only savings accounts',
      'PPF, RD, NSC, and Sukanya Samriddhi — all available at post offices',
      'Only insurance',
      'Only mutual funds',
    ],
    correctAnswer: 1,
    explanation:
        'India Post offers PPF, RD, NSC, and Sukanya Samriddhi Yojana. Post offices are accessible even in rural areas with no private bank branches.',
  ),
];

// ============================================================
// LEVEL 2 — MODULE 9: Setting a Financial Goal
// ============================================================

const List<QuizQuestion> l2m9Questions = [
  QuizQuestion(
    question:
        'Akash wants to buy a ₹12,000 phone. He can save ₹1,000/month. How many months will it take?',
    options: ['10 months', '11 months', '12 months', '14 months'],
    correctAnswer: 2,
    explanation:
        '₹12,000 ÷ ₹1,000/month = 12 months. Goal setting turns dreams into a timeline with concrete monthly targets.',
  ),
  QuizQuestion(
    question:
        'What is a "vision board" for financial goals?',
    options: [
      'A company financial report',
      'A visual collection of your goals (images, numbers, timelines) that keeps you motivated',
      'A board game about money',
      'A bank\'s investment portfolio',
    ],
    correctAnswer: 1,
    explanation:
        'A vision board (physical or digital) keeps goals visible and motivating. Seeing your target (e.g., photo of the laptop) daily reduces impulsive spending.',
  ),
  QuizQuestion(
    question:
        'Meera wants to go on a Goa trip costing ₹8,000 in 8 months. She needs to save:',
    options: ['₹800/month', '₹900/month', '₹1,000/month', '₹1,200/month'],
    correctAnswer: 2,
    explanation:
        '₹8,000 ÷ 8 months = ₹1,000/month. Working backwards from a goal to a monthly savings target is goal-based budgeting.',
  ),
  QuizQuestion(
    question:
        'What distinguishes a short-term goal from a long-term goal?',
    options: [
      'Short-term goals always cost less',
      'Short-term goals are achieved within 1–2 years; long-term goals take 3+ years',
      'Long-term goals are easier to achieve',
      'There is no meaningful difference',
    ],
    correctAnswer: 1,
    explanation:
        'Short-term goals (trip, phone) are under 1–2 years; long-term goals (college fund, car) are 3+ years. Each requires a different saving/investing approach.',
  ),
  QuizQuestion(
    question:
        'Why is it useful to write down financial goals?',
    options: [
      'Banks require it',
      'Written goals are more concrete, easier to track, and 42% more likely to be achieved (research-backed)',
      'Only professionals write down goals',
      'Writing goals earns bonus XP from banks',
    ],
    correctAnswer: 1,
    explanation:
        'Research shows written goals are significantly more likely to be achieved. The act of writing builds commitment and clarity.',
  ),
  QuizQuestion(
    question:
        'Priya\'s savings goal is to buy a ₹6,000 drawing tablet. She saves ₹500/month but spends ₹300 from savings one month on a friend\'s birthday gift. What should she do?',
    options: [
      'Give up on the goal',
      'Adjust her plan — save ₹600/month for the next month to stay on track',
      'Borrow ₹300 to replace what she spent',
      'Move the goal deadline forward by a full year',
    ],
    correctAnswer: 1,
    explanation:
        'Small setbacks are normal. Adjust and compensate (save a little more next month) rather than giving up — resilience is key.',
  ),
  QuizQuestion(
    question:
        'What is a "sinking fund"?',
    options: [
      'A fund for a sinking company',
      'A dedicated savings pool for a specific future expense (e.g., a Diwali trip fund)',
      'A government welfare fund',
      'Money set aside for taxes',
    ],
    correctAnswer: 1,
    explanation:
        'A sinking fund is a small dedicated account for a planned future expense. Having separate funds for each goal prevents you from "borrowing" from one to fund another.',
  ),
  QuizQuestion(
    question:
        'Which of these is the BEST first step to setting a financial goal?',
    options: [
      'Tell all your friends about the goal',
      'Define the goal precisely: what you want, how much it costs, and when you need it',
      'Open a new bank account immediately',
      'Ask parents for the full amount upfront',
    ],
    correctAnswer: 1,
    explanation:
        'Precision is the foundation. "I want to save ₹10,000 for a college trip to Manali by December" is actionable. Vague goals fail.',
  ),
  QuizQuestion(
    question:
        'If you achieve a savings goal 2 months early, what\'s the smartest use of those 2 extra months of savings?',
    options: [
      'Spend it all to celebrate',
      'Start the next goal or add it to an emergency fund',
      'Return it to your parents',
      'Invest in crypto immediately',
    ],
    correctAnswer: 1,
    explanation:
        'Early achievement means extra savings. Channel it into your next goal or emergency fund — never waste momentum.',
  ),
  QuizQuestion(
    question:
        'Which Indian festival season is a common milestone that teens set savings goals around?',
    options: ['New Year\'s Eve', 'Diwali', 'Christmas', 'Holi'],
    correctAnswer: 1,
    explanation:
        'Diwali is India\'s biggest shopping season — a practical milestone for savings goals (new clothes, gadgets, gifts). Planning savings around cultural milestones makes goals feel real and meaningful.',
  ),
];

// ============================================================
// LEVEL 2 — MODULE 10: Basic Tax Awareness
// ============================================================

const List<QuizQuestion> l2m10Questions = [
  QuizQuestion(
    question: 'What is income tax?',
    options: [
      'A fee charged for shopping online',
      'A tax paid to the government on money earned above a threshold',
      'A type of bank interest',
      'A fine for late bill payment',
    ],
    correctAnswer: 1,
    explanation:
        'Income tax is paid to the central government on income earned above a certain limit. It funds public services like roads, hospitals, and schools.',
  ),
  QuizQuestion(
    question:
        'In India, who collects income tax?',
    options: [
      'State government',
      'Municipal corporation',
      'Central government (through the Income Tax Department)',
      'Reserve Bank of India',
    ],
    correctAnswer: 2,
    explanation:
        'Income tax in India is a Central Government tax administered by the Income Tax Department (under the Ministry of Finance).',
  ),
  QuizQuestion(
    question:
        'What is a "salary slip" (payslip)?',
    options: [
      'A bill for school fees',
      'A document from your employer showing gross salary, deductions (tax, PF), and net take-home pay',
      'A receipt for grocery shopping',
      'A bank statement',
    ],
    correctAnswer: 1,
    explanation:
        'A payslip details your earnings and deductions. Understanding it helps you see where your money goes before it even reaches your account.',
  ),
  QuizQuestion(
    question:
        'What does "TDS" mean on a payslip?',
    options: [
      'Total Daily Spending',
      'Tax Deducted at Source — income tax deducted directly from salary by the employer before payment',
      'Term Deposit Savings',
      'Trade and Deal System',
    ],
    correctAnswer: 1,
    explanation:
        'TDS (Tax Deducted at Source) is the employer cutting your income tax before you receive your salary. It\'s remitted to the government on your behalf.',
  ),
  QuizQuestion(
    question:
        'What is "PF" (Provident Fund) deduction on a payslip?',
    options: [
      'A penalty for late arrival',
      'A mandatory retirement savings contribution deducted from salary (and matched by employer)',
      'A professional fee for HR services',
      'A government fine',
    ],
    correctAnswer: 1,
    explanation:
        'PF (EPF — Employee Provident Fund) is a retirement fund: 12% of basic salary is deducted from your pay and matched by your employer — building long-term retirement savings.',
  ),
  QuizQuestion(
    question:
        'What is the basic exemption limit for income tax in India (approximate, for an individual under the new tax regime for FY 2024-25)?',
    options: ['₹1 lakh', '₹2.5 lakh', '₹3 lakh', '₹5 lakh'],
    correctAnswer: 2,
    explanation:
        'Under the new tax regime, income up to ₹3 lakh (FY 2024-25) is tax-free. Effective rebate makes income up to ₹7 lakh tax-free for most individuals.',
  ),
  QuizQuestion(
    question:
        'What is a "tax deduction"?',
    options: [
      'An increase in your tax bill',
      'An amount subtracted from your taxable income, reducing the tax you owe',
      'A fee for filing tax returns',
      'A government penalty',
    ],
    correctAnswer: 1,
    explanation:
        'Tax deductions reduce your taxable income. Example: Section 80C allows deductions up to ₹1.5 lakh for PPF, ELSS, life insurance — legally lowering your tax bill.',
  ),
  QuizQuestion(
    question:
        'What is ITR (Income Tax Return)?',
    options: [
      'Interest on a term deposit',
      'A form filed with the Income Tax Department declaring your income, deductions, and tax liability for the year',
      'A type of mutual fund',
      'An insurance product',
    ],
    correctAnswer: 1,
    explanation:
        'ITR is an annual declaration to the government about your earnings and taxes. Filing it is mandatory beyond a certain income and also helps establish financial credibility.',
  ),
  QuizQuestion(
    question:
        'Why is understanding taxes important as a teenager?',
    options: [
      'Teenagers are required to pay taxes immediately',
      'So you\'re not shocked by deductions when you first earn, and can plan deductions to legally save tax',
      'Tax knowledge only helps wealthy people',
      'You need to pay taxes to open a bank account',
    ],
    correctAnswer: 1,
    explanation:
        'Understanding taxes early means you won\'t be confused by your first payslip, and you can plan deductions (PPF, insurance) to maximize take-home pay legally.',
  ),
  QuizQuestion(
    question:
        'What is GST (Goods and Services Tax)?',
    options: [
      'A tax on goods bought from abroad only',
      'An indirect tax levied on goods and services consumed in India, included in the price you pay',
      'A government savings scheme',
      'A type of income tax',
    ],
    correctAnswer: 1,
    explanation:
        'GST is an indirect tax added to the price of most goods and services. When you buy a ₹100 item with 18% GST, you actually pay ₹118 — part of which goes to the government.',
  ),
];

// ============================================================
// QUIZ DATA MAP — look up questions by module ID
// ============================================================

const Map<String, List<QuizQuestion>> allQuizData = {
  // Level 1
  'l1m1': l1m1Questions,
  'l1m2': l1m2Questions,
  'l1m3': l1m3Questions,
  'l1m4': l1m4Questions,
  'l1m5': l1m5Questions,
  'l1m6': l1m6Questions,
  'l1m7': l1m7Questions,
  'l1m8': l1m8Questions,
  'l1m9': l1m9Questions,
  'l1m10': l1m10Questions,
  // Level 2
  'l2m1': l2m1Questions,
  'l2m2': l2m2Questions,
  'l2m3': l2m3Questions,
  'l2m4': l2m4Questions,
  'l2m5': l2m5Questions,
  'l2m6': l2m6Questions,
  'l2m7': l2m7Questions,
  'l2m8': l2m8Questions,
  'l2m9': l2m9Questions,
  'l2m10': l2m10Questions,
};

List<QuizQuestion> getQuestionsForModule(String moduleId) {
  return allQuizData[moduleId] ?? [];
}
