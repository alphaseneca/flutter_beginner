import 'package:flutter/material.dart';
import 'package:login_app/screens/homescreen.dart';

TextStyle style1 = TextStyle(fontSize: 25);

class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  String user_name = "";
  String pass_word = "";
  @override
  Widget build(BuildContext context) {
    final username = TextField(
      onChanged: (ValueKey) {
        setState(() {
          user_name = ValueKey;
        });
      },
      style: style1,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "Username",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextField(
      obscureText: true,
      onChanged: (ValueKey) {
        setState(() {
          pass_word = ValueKey;
        });
      },
      style: style1,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        hintText: "Password",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginbutton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        onPressed: () {
          if (user_name == "ukesharyal" && pass_word == "hey123") {
            print("Login Successful");
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => homepage(user_name),
                ));
          } else {
            print("login failed");
          }
        },
        padding: EdgeInsets.all(20),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
              padding: EdgeInsets.all(20),
              child: ListView(
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.supervised_user_circle_sharp,
                          size: 250,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        username,
                        SizedBox(
                          height: 20,
                        ),
                        password,
                        SizedBox(
                          height: 30,
                        ),
                        loginbutton,
                      ]),
                ],
              )),
        ),
      ),
    );
  }
}
