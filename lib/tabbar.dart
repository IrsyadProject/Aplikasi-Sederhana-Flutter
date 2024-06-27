import 'package:flutter/material.dart';
import 'package:project_pemmob_ulfiyunita/halheadset.dart';
import 'package:project_pemmob_ulfiyunita/halkomputer.dart';
import 'package:project_pemmob_ulfiyunita/halradio.dart';
import 'package:project_pemmob_ulfiyunita/halsmartphone.dart';

void main(List<String> args) {
  runApp(new TabApp());
}

class TabApp extends StatefulWidget {
  const TabApp({Key? key}) : super(key: key);

  @override
  State<TabApp> createState() => _TabAppState();
}

class _TabAppState extends State<TabApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text("Tab Bar"),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.headset),
              ),
              Tab(
                icon: Icon(Icons.computer),
              ),
              Tab(
                icon: Icon(Icons.radio),
              ),
              Tab(
                icon: Icon(Icons.smartphone),
              ),
            ]),
          ),
          body: TabBarView(children: [
            HalHeadset(),
            HalKomputer(),
            HalRadio(),
            HalSmartphone(),
          ]),
          bottomNavigationBar: Material(
            color: Colors.amber,
            child: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.headset),
              ),
              Tab(
                icon: Icon(Icons.computer),
              ),
              Tab(
                icon: Icon(Icons.radio),
              ),
              Tab(
                icon: Icon(Icons.smartphone),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
