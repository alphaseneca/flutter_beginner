import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  //To add Icon Image
  var cross = Icon(
    Icons.cancel,
    size: 50,
  );
  var circle = Icon(
    Icons.circle,
    size: 50,
  );
  var blank = Icon(
    Icons.square,
    size: 50,
  );

  bool iscross = true;
  String message = "";
  late List<String> gamestate;

//Initialize the box with empty value
  @override
  void initState() {
    gamestate = List.filled(9, "empty");
    this.message = "";
    super.initState();
  }

  //To play game

  playgame(int index) {
    if (this.gamestate[index] == "empty") {
      setState(() {
        if (this.iscross) {
          this.gamestate[index] = "cross";
        } else {
          this.gamestate[index] = "circle";
        }
        iscross = !iscross;
        checkwin();
      });
    }
  }

  //To reset game

  resetgame() {
    setState(() {
      gamestate = List.filled(9, "empty");
      this.message = "";
    });
  }

  //To get icon image
  Icon geticon(String title) {
    switch (title) {
      case ("empty"):
        return blank;
        break;
      case ("cross"):
        return cross;
        break;
      case ("circle"):
        return circle;
        break;
    }
    return Icon(Icons.square);
  }

  //To check for win logic

  checkwin() {
    if ((gamestate[0] != "empty") &&
        (gamestate[0] == gamestate[1]) &&
        (gamestate[1] == gamestate[2])) {
      setState(() {
        this.message = this.gamestate[0] + "Wins";
      });
    } else if ((gamestate[3] != "empty") &&
        (gamestate[3] == gamestate[4]) &&
        (gamestate[4] == gamestate[5])) {
      setState(() {
        this.message = this.gamestate[3] + "Wins";
      });
    } else if ((gamestate[6] != "empty") &&
        (gamestate[6] == gamestate[7]) &&
        (gamestate[7] == gamestate[8])) {
      setState(() {
        this.message = this.gamestate[6] + "Wins";
      });
    } else if ((gamestate[0] != "empty") &&
        (gamestate[0] == gamestate[3]) &&
        (gamestate[3] == gamestate[6])) {
      setState(() {
        this.message = this.gamestate[0] + "Wins";
      });
    } else if ((gamestate[1] != "empty") &&
        (gamestate[1] == gamestate[4]) &&
        (gamestate[4] == gamestate[7])) {
      setState(() {
        this.message = this.gamestate[1] + "Wins";
      });
    } else if ((gamestate[2] != "empty") &&
        (gamestate[2] == gamestate[5]) &&
        (gamestate[5] == gamestate[8])) {
      setState(() {
        this.message = this.gamestate[2] + "Wins";
      });
    } else if ((gamestate[0] != "empty") &&
        (gamestate[0] == gamestate[4]) &&
        (gamestate[4] == gamestate[8])) {
      setState(() {
        this.message = this.gamestate[0] + "Wins";
      });
    } else if ((gamestate[2] != "empty") &&
        (gamestate[2] == gamestate[4]) &&
        (gamestate[4] == gamestate[6])) {
      setState(() {
        this.message = this.gamestate[2] + "Wins";
      });
    } else if (!gamestate.contains("empty")) {
      setState(() {
        message = "Game Draw";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tic_Tac_Toe"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.0,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: gamestate.length,
              itemBuilder: (context, i) => SizedBox(
                width: 100,
                height: 100,
                child: MaterialButton(
                  onPressed: () {
                    this.playgame(i);
                  },
                  child: geticon(this.gamestate[i]),
                ),
              ),
            ),
          ),
          Text(
            message,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          SizedBox(height: 25),
          ElevatedButton(
            onPressed: resetgame,
            child: Text("Reset Game"),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
