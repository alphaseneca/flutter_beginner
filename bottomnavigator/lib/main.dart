import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Bottom Navigator",
    home: mainpage(),
  ));
}

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  int _selectedindex = 0;
  List<Widget> widget1 = <Widget>[
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF3944F7), borderRadius: BorderRadius.circular(10)),
        height: 100,
        width: double.infinity,
        child: Center(
          child: Text(
            "Welcome to Home",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF3944F7), borderRadius: BorderRadius.circular(10)),
        height: 100,
        width: double.infinity,
        child: Center(
          child: Text(
            "Welcome to About",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF3944F7), borderRadius: BorderRadius.circular(10)),
        height: 100,
        width: double.infinity,
        child: Center(
          child: Text(
            "Welcome to Settings",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ),
      ),
    )
  ];

  _onitemtap(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF35BDD0),
        title: Text("Bottom Navigator"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: "About",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        currentIndex: _selectedindex,
        onTap: _onitemtap,
      ),
      body: Center(
        child: widget1.elementAt(_selectedindex),
      ),
    );
  }
}
