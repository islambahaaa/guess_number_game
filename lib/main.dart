import 'package:flutter/material.dart';
import 'package:guess_number/views/game_view.dart';
import 'package:guess_number/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        GameView.id: (context) => const GameView(),
      },
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
