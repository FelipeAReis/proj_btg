import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proj_btg/Components/introscreen.dart';
import 'package:proj_btg/View/list_page.dart';


import 'View/history_page.dart';
import 'View/home_page.dart';

void main(List<String> args) {
  runApp(Initial());
}

class Initial extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
     return MaterialApp(
       title: 'BTG Pactual',
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         primarySwatch: Colors.blueGrey,
         visualDensity: VisualDensity.adaptivePlatformDensity
       ),
       home: SplashScreenPage(title: 'Splash Screen'),

       routes: <String, WidgetBuilder>{

         '/homePage' : (BuildContext context) => new HomePage(),
         '/historyPage' : (BuildContext context) => new HistoryPage(),
         '/listPage' : (BuildContext context) => new ListPage()
       },
     );
  }
}

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key key, this.title}): super(key: key);
  final title;


  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
      return IntroScreen(size: size);
  }

 
}



