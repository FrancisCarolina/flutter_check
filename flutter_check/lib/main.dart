import 'package:flutter/material.dart';
//import 'package:flutter_check/home.dart';
import 'package:flutter_check/homeTileCheck.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MyHomePage(title: "Titulo teste"),
    );
  }
}

