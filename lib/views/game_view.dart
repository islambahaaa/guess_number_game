import 'package:flutter/material.dart';
import 'package:guess_number/views/widgets/digit_item.dart';
import 'package:guess_number/views/widgets/num_pad.dart';
import 'package:numpad/numpad.dart';

class GameView extends StatefulWidget {
  const GameView({super.key});
  static String id = 'gameView';
  @override
  State<GameView> createState() => _GameViewState();
}

class _GameViewState extends State<GameView> {
  TextEditingController pinController = TextEditingController();
  String num = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game'),
      ),
      // body: const Row(
      //   children: [
      //     DigitItem(),
      //     DigitItem(),
      //     DigitItem(),
      //   ],
      // )
      body: Column(
        children: [
          Row(
            children: [
              DigitItem(
                text: num,
              ),
              DigitItem(
                text: num,
              ),
              DigitItem(
                text: num,
              ),
            ],
          ),
          KeyPad(
            pinController: pinController,
            isPinLogin: false,
            onChange: (String pin) {
              if (pin.length < 2) {
                num = pin;
                setState(() {});
              }
            },
            onSubmit: (String pin) {},
          ),
        ],
      ),
    );
  }
}
