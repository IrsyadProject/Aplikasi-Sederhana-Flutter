import 'package:flutter/material.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:project_pemmob_ulfiyunita/container.dart';
import 'package:project_pemmob_ulfiyunita/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllernama = TextEditingController();
  TextEditingController controllerpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home),
        title: Text("Login Page"),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            FlutterLogo(
              size: 150,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controllernama,
                decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Username Anda",
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.people)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: controllerpassword,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Password Anda",
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.lock)),
              ),
            ),
            SizedBox(
              width: 400,
              child: ElevatedButton(
                  onPressed: () {
                    if (controllernama.text.toString() == 'admin' &&
                        controllerpassword.text.toString() == 'admin') {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    } else {
                      CoolAlert.show(
                        context: context,
                        type: CoolAlertType.error,
                        title: "LOGIN GAGAL",
                        text: "Periksa Usernam dan Password Anda",
                      );
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
