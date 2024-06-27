import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: new HalSatu(),
    title: "Navigasi",
    routes: <String, WidgetBuilder>{
      '/HalSatu': (BuildContext context) => new HalSatu(),
      '/HalDua': (BuildContext context) => new HalDua(),
    },
  ));
}

class HalSatu extends StatelessWidget {
  const HalSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: new Icon(Icons.home),
        title: Text("Halaman 1"),
      ),
      body: new Center(
        child: new IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/HalDua');
          },
          icon: new Icon(
            Icons.keyboard_arrow_right,
            size: 60.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class HalDua extends StatelessWidget {
  const HalDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: new Icon(Icons.home),
        title: Text("Halaman 2"),
      ),
      body: new Center(
        child: new IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/HalSatu');
          },
          icon: new Icon(
            Icons.keyboard_arrow_left,
            size: 60.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
