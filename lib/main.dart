import 'package:flutter/material.dart';
import 'package:guess_number/views/game_view.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'homeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Guess Game',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 4,
            ),
            CustomHomeButton(
              text: 'Start',
              onTap: () {
                Navigator.pushNamed(context, GameView.id);
              },
            ),
            const Spacer(),
            CustomHomeButton(
              text: 'How To Play ?',
              onTap: () {
                Navigator.pushNamed(context, GameView.id);
              },
            ),
            const Spacer(),
            CustomHomeButton(
              text: 'Contact Us',
              onTap: () {
                Navigator.pushNamed(context, GameView.id);
              },
            ),
            const Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomHomeButton extends StatelessWidget {
  const CustomHomeButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
