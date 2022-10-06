import 'package:bookreader/readerscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "bookreader",
    home: homepage(),
  ));
}

var chapterlists = [
  "Chapter 1",
  "Chapter 2",
  "Chapter 3",
  "Chapter 4",
  "Chapter 5",
  "Chapter 6",
  "Chapter 7",
  "Chapter 8",
  "Chapter 9",
];

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Book Reader"),
        backgroundColor: Color(0xFFB4161B),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: chapterlists.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 2.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                if (chapterlists[index] == "Chapter 1") {
                  print("Chapter 1 is clicked");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => readerscreen(1)));
                } else if (chapterlists[index] == "Chapter 2") {
                  print("Chapter 2 is clicked");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => readerscreen(2)));
                }
              },
              child: Card(
                child: Column(children: [
                  SizedBox(
                    height: 10,
                  ),
                  Icon(
                    Icons.book,
                    size: 40,
                  ),
                  Text(
                    chapterlists[index],
                  )
                ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
