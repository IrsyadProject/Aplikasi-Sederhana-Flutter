import 'package:flutter/material.dart';

class HalHeadset extends StatelessWidget {
  const HalHeadset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Headset",
            style: TextStyle(fontSize: 20),
          ),
          Icon(
            Icons.headset,
            size: 90,
          ),
        ],
      ),
    );
  }
}
