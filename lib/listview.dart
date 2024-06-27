import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new ListViewApp());
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List View",
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text("List Pertama"),
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text("List Kedua"),
            ),
            ListTile(
              leading: Icon(Icons.access_alarms),
              title: Text("List Ketiga"),
            ),
            ListTile(
              leading: Icon(Icons.accessibility),
              title: Text("List Keempat"),
            ),
          ],
        ),
      ),
    );
  }
}
