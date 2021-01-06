

import 'package:flutter/material.dart';
import 'package:proj_btg/View/home_page.dart';
import 'package:splashscreen/splashscreen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({
    Key key,
    this.size
  
  }) : super(key: key);

  final Size size;
  @override
Widget build(BuildContext context) {
  return Stack(
    alignment: Alignment.center,
    children: <Widget>[
      SplashScreen(
        seconds: 3,
         gradientBackground: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blueGrey,
            Colors.blueGrey[800],
            Colors.blueGrey
          ],
        ), 
        navigateAfterSeconds: HomePage(),
        loaderColor: Colors.transparent,
      ),
      Container(
        width: size.width * 0.70,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/logo_white.png"),
            fit: BoxFit.contain,
          ),
          
        ),

      ),
    ],
  );
}
}
