import 'package:flutter/material.dart';
import 'menu.dart';

void main() {
  runApp(const MyApp());
}

//Aqui é a classe que roda o aplicativo na função main, todos os componetes são chamados aqui
class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: const Menu(title: 'New Mfx Quiz'),
    );
  }
}

