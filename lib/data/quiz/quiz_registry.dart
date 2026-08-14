import 'quiz_question.dart';

// Level 1
import 'level_1/l1m1_quiz.dart';
import 'level_1/l1m2_quiz.dart';
import 'level_1/l1m3_quiz.dart';
import 'level_1/l1m4_quiz.dart';
import 'level_1/l1m5_quiz.dart';
import 'level_1/l1m6_quiz.dart';
import 'level_1/l1m7_quiz.dart';
import 'level_1/l1m8_quiz.dart';
import 'level_1/l1m9_quiz.dart';
import 'level_1/l1m10_quiz.dart';

// Level 2
import 'level_2/l2m1_quiz.dart';
import 'level_2/l2m2_quiz.dart';
import 'level_2/l2m3_quiz.dart';
import 'level_2/l2m4_quiz.dart';
import 'level_2/l2m5_quiz.dart';
import 'level_2/l2m6_quiz.dart';
import 'level_2/l2m7_quiz.dart';
import 'level_2/l2m8_quiz.dart';
import 'level_2/l2m9_quiz.dart';
import 'level_2/l2m10_quiz.dart';

const Map<String, List<QuizQuestion>> quizRegistry = {
  // Level 1
  'l1m1': l1m1Quiz,
  'l1m2': l1m2Quiz,
  'l1m3': l1m3Quiz,
  'l1m4': l1m4Quiz,
  'l1m5': l1m5Quiz,
  'l1m6': l1m6Quiz,
  'l1m7': l1m7Quiz,
  'l1m8': l1m8Quiz,
  'l1m9': l1m9Quiz,
  'l1m10': l1m10Quiz,

  // Level 2
  'l2m1': l2m1Quiz,
  'l2m2': l2m2Quiz,
  'l2m3': l2m3Quiz,
  'l2m4': l2m4Quiz,
  'l2m5': l2m5Quiz,
  'l2m6': l2m6Quiz,
  'l2m7': l2m7Quiz,
  'l2m8': l2m8Quiz,
  'l2m9': l2m9Quiz,
  'l2m10': l2m10Quiz,
};
