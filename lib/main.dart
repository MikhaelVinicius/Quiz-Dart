import "package:flutter/material.dart";
import "package:sqflite/sqflite.dart";
import 'menu.dart';

//Rode a aplicação pelo Debug aqui
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Menu(title: "Quiz Programação Mobile"),
    );
  }
}
