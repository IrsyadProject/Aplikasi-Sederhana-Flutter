import 'package:flutter/material.dart';

class HalRadio extends StatelessWidget {
  const HalRadio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Radio",
            style: TextStyle(fontSize: 20),
          ),
          Icon(
            Icons.radio,
            size: 90,
          ),
        ],
      ),
    );
  }
}
