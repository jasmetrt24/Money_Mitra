import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ============================================================
// GAME STATE — singleton ChangeNotifier
// Persists XP and streak via SharedPreferences.
// ============================================================

class GameState extends ChangeNotifier {
  // ============================================================
  // KEYS
  // ============================================================

  static const String _xpKey = 'total_xp';
  static const String _streakKey = 'current_streak';
  static const String _lastActivityKey = 'last_activity_date';
  static const String _completedModulesKey = 'completed_modules';

  // ============================================================
  // STATE
  // ============================================================

  int _totalXP = 0;
  int _currentStreak = 0;
  String _lastActivityDate = '';
  final Set<String> _completedModules = {};

  int get totalXP => _totalXP;
  int get currentStreak => _currentStreak;
  Set<String> get completedModules => Set.unmodifiable(_completedModules);

  bool isModuleCompleted(String moduleId) => _completedModules.contains(moduleId);

  // ============================================================
  // LOAD (call once at app start)
  // ============================================================

  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    _totalXP = prefs.getInt(_xpKey) ?? 0;
    _currentStreak = prefs.getInt(_streakKey) ?? 0;
    _lastActivityDate = prefs.getString(_lastActivityKey) ?? '';
    final completed = prefs.getStringList(_completedModulesKey) ?? [];
    _completedModules.addAll(completed);

    // Check if streak should be reset due to missed day
    _checkStreakValidity();

    notifyListeners();
  }

  // ============================================================
  // ADD XP
  // Award XP live (called after each question answer)
  //   correct answer → +10 XP
  //   wrong answer   → +2 XP (attempted)
  // ============================================================

  Future<void> addXP(int amount) async {
    _totalXP += amount;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_xpKey, _totalXP);
    notifyListeners();
  }

  // ============================================================
  // RECORD ACTIVITY
  // Called when a module is completed.
  // Increments streak once per calendar day; resets on missed day.
  // ============================================================

  Future<void> recordActivity(String moduleId) async {
    final prefs = await SharedPreferences.getInstance();

    final today = _todayString();
    final yesterday = _yesterdayString();

    if (_lastActivityDate == today) {
      // Already recorded activity today — streak stays the same
    } else if (_lastActivityDate == yesterday) {
      // Consecutive day — increment streak
      _currentStreak++;
    } else {
      // Missed a day (or first time) — reset to 1
      _currentStreak = 1;
    }

    _lastActivityDate = today;
    await prefs.setInt(_streakKey, _currentStreak);
    await prefs.setString(_lastActivityKey, _lastActivityDate);

    // Mark module as completed
    _completedModules.add(moduleId);
    await prefs.setStringList(_completedModulesKey, _completedModules.toList());

    notifyListeners();
  }

  // ============================================================
  // RESET (for testing / debug)
  // ============================================================

  Future<void> reset() async {
    _totalXP = 0;
    _currentStreak = 0;
    _lastActivityDate = '';
    _completedModules.clear();
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_xpKey);
    await prefs.remove(_streakKey);
    await prefs.remove(_lastActivityKey);
    await prefs.remove(_completedModulesKey);
    notifyListeners();
  }

  // ============================================================
  // HELPERS
  // ============================================================

  void _checkStreakValidity() {
    if (_lastActivityDate.isEmpty) return;

    final today = _todayString();
    final yesterday = _yesterdayString();

    if (_lastActivityDate != today && _lastActivityDate != yesterday) {
      // Missed at least one day — reset streak
      _currentStreak = 0;
    }
  }

  String _todayString() {
    final now = DateTime.now();
    return '${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}';
  }

  String _yesterdayString() {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return '${yesterday.year}-${yesterday.month.toString().padLeft(2, '0')}-${yesterday.day.toString().padLeft(2, '0')}';
  }
}
