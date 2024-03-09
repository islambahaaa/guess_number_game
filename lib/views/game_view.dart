import 'package:flutter/material.dart';
import 'package:guess_number/views/widgets/digit_item.dart';

class GameView extends StatelessWidget {
  const GameView({super.key});
  static String id = 'gameView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Game'),
        ),
        body: const Row(
          children: [
            DigitItem(),
            DigitItem(),
            DigitItem(),
          ],
        ));
  }
}
