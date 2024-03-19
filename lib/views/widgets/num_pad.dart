import 'package:flutter/material.dart';

class KeyPad extends StatelessWidget {
  double buttonSize = 50.0;
  final TextEditingController pinController;
  final Function onChange;

  KeyPad({
    super.key,
    required this.onChange,
    required this.pinController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonWidget('1'),
              const SizedBox(
                width: 10,
              ),
              buttonWidget('2'),
              const SizedBox(
                width: 10,
              ),
              buttonWidget('3'),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonWidget('4'),
              const SizedBox(
                width: 10,
              ),
              buttonWidget('5'),
              const SizedBox(
                width: 10,
              ),
              buttonWidget('6'),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buttonWidget('7'),
              const SizedBox(
                width: 10,
              ),
              buttonWidget('8'),
              const SizedBox(
                width: 10,
              ),
              buttonWidget('9'),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconButtonWidget(Icons.backspace, () {
                if (pinController.text.isNotEmpty) {
                  pinController.clear();
                  // pinController.text = pinController.text
                  //     .substring(0, pinController.text.length - 1);
                }
                onChange(pinController.text);
              }),
              const SizedBox(width: 10),
              buttonWidget('0'),
              SizedBox(
                width: buttonSize,
              )
            ],
          ),
        ],
      ),
    );
  }

  buttonWidget(String buttonText) {
    return SizedBox(
      height: buttonSize,
      width: buttonSize,
      child: MaterialButton(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(buttonSize / 6),
        ),
        focusColor: Colors.blue,
        hoverColor: Colors.blue,
        highlightColor: Colors.blue,
        onPressed: () {
          pinController.text = buttonText;
          onChange(pinController.text);
        },
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
        ),
      ),
    );
  }

  iconButtonWidget(IconData icon, void Function()? function) {
    return InkWell(
      onTap: function,
      child: Container(
        height: buttonSize,
        width: buttonSize,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(buttonSize / 6)),
          color: Colors.orangeAccent,
        ),
        child: Center(
          child: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
