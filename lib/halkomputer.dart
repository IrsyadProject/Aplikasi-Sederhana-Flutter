import 'package:flutter/material.dart';

class HalKomputer extends StatelessWidget {
  const HalKomputer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Komputer",
            style: TextStyle(fontSize: 20),
          ),
          Icon(
            Icons.computer,
            size: 90,
          ),
        ],
      ),
    );
  }
}
