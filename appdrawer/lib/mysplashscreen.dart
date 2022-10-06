import 'package:appdrawer/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:splashscreen/splashscreen.dart';

class mysplashscreen extends StatefulWidget {
  const mysplashscreen({Key key}) : super(key: key);

  @override
  State<mysplashscreen> createState() => _mysplashscreenState();
}

class _mysplashscreenState extends State<mysplashscreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new homepage(),
      title: Text("Sunflower App"),
      // image: Image.asset('img/mainlogo.jpg'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: TextStyle(),
      // photoSize: 50,
      loaderColor: Colors.yellow,
      loadingText: Text("Loading.."),
    );
  }
}
