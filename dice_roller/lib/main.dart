import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "diceroller",
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int dicenumber = 1;

  void changedice() {
    setState(() {
      dicenumber = 7;
    });

    /*Future.delayed(const Duration(milliseconds: 250), () {
     setState(() {
       dicenumber = 8;
     });
     });
     */

    Future.delayed(const Duration(milliseconds: 600), () {
      setState(() {
        dicenumber = Random().nextInt(6) + 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: ClipRRect(
              child: Image.asset(
                "assets/face$dicenumber.png",
                height: 200,
                width: 200,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ClipRRect(
            child: MaterialButton(
              onPressed: changedice,
              color: Colors.blue,
              child: Text(
                "Roll",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
        ],
      ),
    );
  }
}
