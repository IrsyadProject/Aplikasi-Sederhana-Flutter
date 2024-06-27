import 'package:flutter/material.dart';

class HalContainer extends StatelessWidget {
  const HalContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //centerTitle: true,
        title: Text("Container Widget Ulfi"),
        //leading: Icon(Icons.account_tree),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 400,
              height: 200,
              color: Colors.green[700],
              //margin: EdgeInsets.all(15),
              //padding: EdgeInsets.all(15),
              padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: 90,
                  ),
                  Text(
                    "Container 1",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  FlutterLogo(
                    size: 90,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 400,
              height: 200,
              color: Colors.blue[700],
              //margin: EdgeInsets.all(15),
              //padding: EdgeInsets.all(15),
              padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Row(
                children: [
                  FlutterLogo(
                    size: 90,
                  ),
                  Text(
                    "Container 2",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  FlutterLogo(
                    size: 90,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Kembali"))
          ],
        ),
      ),
    );
  }
}
