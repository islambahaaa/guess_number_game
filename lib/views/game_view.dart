import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: const PinFields(),
            )
          ],
        ));
  }
}

class PinFields extends StatefulWidget {
  const PinFields({
    super.key,
  });

  @override
  State<PinFields> createState() => _PinFieldsState();
}

class _PinFieldsState extends State<PinFields> {
  final TextEditingController pinController = TextEditingController();
  String previousText = '';

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 3,
      cursorHeight: 16,
      enableActiveFill: true,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      controller: pinController,
      pinTheme: PinTheme(
        borderRadius: BorderRadius.circular(10),
        shape: PinCodeFieldShape.box,
      ),
      onChanged: (value) {
        List<String> uniqueDigits = value
            .split('')
            .toSet()
            .toList(); // Convert value to a list of unique digits
        if (uniqueDigits.length < value.length) {
          //cancel the last input of the user
        }
      },
    );
  }
}
