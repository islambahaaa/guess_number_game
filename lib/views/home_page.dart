import 'package:flutter/material.dart';
import 'package:guess_number/views/game_view.dart';
import 'package:guess_number/views/widgets/contact_view.dart';
import 'package:guess_number/views/widgets/custom_home_button.dart';

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
                Navigator.pushNamed(context, ContactView.id);
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
