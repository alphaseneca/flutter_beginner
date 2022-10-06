import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatelessWidget {
  const homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hey"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                accountName: Text("Ukesh Aryal"),
                accountEmail: Text("aryal.ukesh@gmail.com")),
            ListTile(
              title: Text("Purchase"),
              subtitle: Text("Purchase Item"),
              leading: Icon(Icons.shop),
              onTap: () {
                null;
              },
            ),
            ListTile(
              title: Text("Sales"),
              subtitle: Text("Sales Item"),
              leading: Icon(Icons.shop),
              onTap: () {
                null;
              },
            ),
            ListTile(
              title: Text("Report"),
              subtitle: Text("Report Item"),
              leading: Icon(Icons.shop),
              onTap: () {
                null;
              },
            ),
            ListTile(
              title: Text("Users"),
              subtitle: Text("Users Item"),
              leading: Icon(Icons.supervised_user_circle),
              onTap: () {
                null;
              },
            ),
          ],
        ),
      ),
    );
  }
}
