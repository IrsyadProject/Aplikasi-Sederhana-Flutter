import 'package:flutter/material.dart';
import 'package:project_pemmob_ulfiyunita/container.dart';
import 'package:project_pemmob_ulfiyunita/loginpage.dart';
import 'package:project_pemmob_ulfiyunita/row_column.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginPage());
  }
}
