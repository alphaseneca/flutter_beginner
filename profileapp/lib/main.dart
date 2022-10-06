import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Alphaseneca",
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile of Mr. Alpha"),
      ),
      body: Column(
        children: [
          Center(
              child: Image.network(
                  "https://res.cloudinary.com/demo/image/upload/v1312461204/sample.jpg",
                  height: 300,
                  width: 300)),
          SizedBox(height: 5),
          Text(
            "Name: Alphaseneca",
            style: TextStyle(
              fontSize: 24,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Address: *********",
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Email: ********",
            style: TextStyle(
              fontSize: 20,
            ),
          )
        ],
      ),
    ),
  ));
}
