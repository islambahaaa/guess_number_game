import 'dart:math';
import 'package:flutter/material.dart';
import 'package:guess_number/views/widgets/num_pad.dart';

class CodeUnlock extends StatefulWidget {
  const CodeUnlock({super.key});

  @override
  _CodeUnlockState createState() => _CodeUnlockState();
}

class _CodeUnlockState extends State {
  late String displayCode;
  TextEditingController pinController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    displayCode = getNextCode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CODE UNLOCK'),
        backgroundColor: Colors.blue,
      ),
      body: Builder(
        builder: (context) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  displayCode,
                  style: const TextStyle(
                      color: Colors.blue,
                      fontSize: 50,
                      fontWeight: FontWeight.bold
                      // fontFamily: AppTextStyle.robotoBold
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, bottom: 15),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.orangeAccent,
                      border:
                          Border.all(color: Colors.orangeAccent, width: 1.5)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextField(
                      controller: pinController,
                      readOnly: true,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        // fontWeight: FontWeight.bold
                        // fontFamily: AppTextStyle.robotoBold
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter PIN',
                      ),
                      // controller: userDisplayName,
                    ),
                  ),
                ),
              ),
              KeyPad(
                pinController: pinController,
                isPinLogin: false,
                onChange: (String pin) {
                  pinController.text = pin;
                  print(pinController.text);
                  setState(() {});
                },
                onSubmit: (String pin) {
                  if (pin.length != 4) {
                    (pin.isEmpty)
                        ? showInSnackBar('Please Enter Pin')
                        : showInSnackBar('Wrong Pin');
                    return;
                  } else {
                    pinController.text = pin;

                    if (pinController.text == displayCode) {
                      showInSnackBar('Pin Match');
                      setState(() {
                        displayCode = getNextCode();
                      });
                    } else {
                      showInSnackBar('Wrong pin');
                    }
                    print('Pin is ${pinController.text}');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showInSnackBar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value)));
  }

  getNextCode() {
    pinController.text = '';
    var rng = Random();
    var code = (rng.nextInt(9000) + 1000).toString();
    print('Random No is : $code');
    return code;
  }
}
