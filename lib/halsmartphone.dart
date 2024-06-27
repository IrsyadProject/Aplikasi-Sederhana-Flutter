import 'package:flutter/material.dart';

class HalSmartphone extends StatelessWidget {
  const HalSmartphone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Smartphone",
            style: TextStyle(fontSize: 20),
          ),
          Icon(
            Icons.smartphone,
            size: 90,
          ),
        ],
      ),
    );
  }
}
