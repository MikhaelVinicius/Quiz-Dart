import 'package:flutter/material.dart';
import 'package:saori_kido_quiz_bayo/PerguntaApp.dart';
import 'package:saori_kido_quiz_bayo/score.dart';
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
            text: '</>',
            style: TextStyle(
                fontSize: 30.0,
                color: const Color.fromRGBO(68, 138, 255, 1),
                fontWeight: FontWeight.bold),
            children: const <TextSpan>[
              TextSpan(text: 'Ti', style: TextStyle(color:const Color.fromRGBO(68, 138, 255, 1),fontSize: 25.0)),
              TextSpan(
                  text: 'Quest',
                  style: TextStyle(color: Color.fromARGB(255, 255, 235, 59),fontSize: 25.0)),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Text("Seja Bem-vind@!"),
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(25.0),
          ),
          Score(20),
          TextButton(
              onPressed: () {
                runApp(PerguntaApp());
              },
              child: Text("Inicie sua jornada!",
                  style: TextStyle(color: Colors.yellow, fontSize: 25)),
              style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 196, 43, 223))),
        ],
      ),
    );
  }
}

