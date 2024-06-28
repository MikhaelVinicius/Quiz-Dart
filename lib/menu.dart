import 'package:flutter/material.dart';
import 'package:saori_kido_quiz_bayo/PerguntaApp.dart';
import 'package:saori_kido_quiz_bayo/Score.dart';
import 'package:saori_kido_quiz_bayo/pergunta.dart';

class Menu extends StatefulWidget {
  const Menu({super.key, required this.title});

  final String title;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 196, 43, 223),
        title: RichText(
          text: TextSpan(
            text: 'Quiz',
            style: TextStyle(
                fontSize: 22.0,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold),
            children: const <TextSpan>[
              TextSpan(text: 'Programação', style: TextStyle(color: Colors.yellow)),
              TextSpan(
                  text: ' Mobile!',
                  style: TextStyle(color: Color.fromARGB(255, 109, 34, 6))),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Text("Bem-vindo!"),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(25.0),
          ),
          Score(15),
          TextButton(
              onPressed: () {
                runApp(PerguntaApp());
              },
              child: Text("Iniciar jornada",
                  style: TextStyle(color: Colors.yellow, fontSize: 25)),
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 196, 43, 223))),
        ],
      ),
    );
  }
}
