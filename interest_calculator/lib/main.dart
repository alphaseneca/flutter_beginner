import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Simple Interest Calculator",
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

const headcolor = Color(0xFFE21717);
String p = "", t = "", r = "", result = "";

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Simple Interest Calculator",
          style: TextStyle(),
        ),
        backgroundColor: headcolor,
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            SizedBox(height: 25),
            TextField(
              onChanged: (value) => p,
              keyboardType:
                  TextInputType.number, //Lets the user type just the number.
              decoration: InputDecoration(
                hintText: "Enter the Principal",
                enabledBorder: OutlineInputBorder(
                  //Boarder we see on the text field before clicking.
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  //Boarder seen when we click on the text field.
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            //For Time
            TextField(
              onChanged: (value) => t,
              keyboardType:
                  TextInputType.number, //Lets the user type just the number.
              decoration: InputDecoration(
                hintText: "Enter the time (In years)",
                enabledBorder: OutlineInputBorder(
                  //Boarder we see on the text field before clicking.
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  //Boarder seen when we click on the text field.
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            //For Rate
            TextField(
              onChanged: (value) => r,
              keyboardType:
                  TextInputType.number, //Lets the user type just the number.
              decoration: InputDecoration(
                hintText: "Enter the rate of interest",
                enabledBorder: OutlineInputBorder(
                  //Boarder we see on the text field before clicking.
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  //Boarder seen when we click on the text field.
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),

            MaterialButton(
              onPressed: () {
                setState(() {
                  result = (double.parse(p) * double.parse(t) * double.parse(r))
                      .toString();
                });
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              height: 50,
              color: headcolor,
              child: Text(
                "Calculate",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Text(
                "The result is $result.",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
