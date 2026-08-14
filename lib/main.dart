import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'services/game_state.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load persisted XP and streak before the app renders
  final gameState = GameState();
  await gameState.load();

  runApp(
    ChangeNotifierProvider<GameState>.value(
      value: gameState,
      child: const MoneyMitraApp(),
    ),
  );
}

class MoneyMitraApp extends StatelessWidget {
  const MoneyMitraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MoneyMitra',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF7F8FC),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF7252B5)),
        fontFamily: 'Arial',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          scrolledUnderElevation: 0,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
