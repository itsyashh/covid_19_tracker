import 'package:covid19/screens/about.dart';
import 'package:covid19/screens/notification.dart';
import 'package:covid19/screens/pmcare.dart';
import 'package:covid19/screens/privacy.dart';
import 'package:flutter/material.dart';
import 'HomePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid - 19',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepPurple,
        accentColor: Colors.cyan[600]

      ),
      home:HomePage(),
      routes: <String, WidgetBuilder>{
        "/a": (BuildContext context) => About(),
        "/b": (BuildContext context) => Notifications(),
        "/c": (BuildContext context) => Privacy(),
        "/d": (BuildContext context) => Pmcare(),
      }

    );
  }
}


