import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "dialer app",
    home: homepage(),
  ));
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var contactlist = [
    "Ukesh Aryal",
    "Bishal Chhetri",
    "Kushal Sharma",
  ];
  var phonenumber = ["9865045174", "9876543217", "9876543210"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE21717),
        title: Text("dialer app"),
      ),
      body: ListView.builder(
        itemCount: contactlist.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.supervised_user_circle),
            title: Text(contactlist[index]),
            subtitle: Text(phonenumber[index]),
            trailing: IconButton(
                icon: Icon(Icons.call),
                onPressed: () {
                  launchUrlString("tel:${phonenumber[index]}");
                }),
          );
        },
      ),
    );
  }
}
