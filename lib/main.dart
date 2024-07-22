import "package:TI.quest/PerguntaApp.dart";
import "package:TI.quest/db.dart";
import "package:flutter/material.dart";
import "package:sqflite/sqflite.dart";
import 'menu.dart';


void main() {
  runApp(const MyApp());
  //runApp(PerguntaApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Menu(title: "Quiz Programação Mobile"),
    );
  }
}

