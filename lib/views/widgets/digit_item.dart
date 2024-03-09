import 'package:flutter/material.dart';

class DigitItem extends StatelessWidget {
  const DigitItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.shade300,
            // boxShadow: [
            //   BoxShadow(
            //     spreadRadius: 0,
            //     color: Colors.black,
            //     offset: const Offset(-6, -5),
            //     blurRadius: 10,
            //   ),
            // ],
            border: Border.all(
              color: Colors.blue,
              width: 2,
            )),
        child: const Center(
          //     child: Text(
          //   '1',
          //   style: TextStyle(
          //     fontSize: 26,
          //   ),
          // )
          child: TextField(
            clipBehavior: Clip.hardEdge,
            keyboardType: TextInputType.number,
          ),
        ),
      ),
    );
  }
}
