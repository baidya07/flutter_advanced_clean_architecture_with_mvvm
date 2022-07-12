import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp.internal(); //private named constructor
  int appState = 0;

  static final MyApp instance = MyApp.internal();  //Single instance -- singleton

  factory MyApp() => instance;  //factory for the class instance

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
