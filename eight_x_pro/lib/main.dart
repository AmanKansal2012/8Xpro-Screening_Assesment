
import 'package:eight_x_pro/Screens/WelcomePage.dart';
import 'package:flutter/material.dart';

void main()
{

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '8xPro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData
        (
        scaffoldBackgroundColor: Colors.white,
        dialogBackgroundColor: Colors.white,
        primarySwatch: Colors.lightBlue,
        cardColor: Colors.white70,
        accentColor: Colors.blue,
      ),
      home: Welcome(),

    );
  }
}
