import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Main App'),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              runApp(PerguntaApp());
            },
            child: Text('Iniciar PerguntaApp'),
          ),
        ),
      ),
    );
  }
}

class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
            appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 196, 43, 223),
        title: RichText(
  text: TextSpan(
    text: 'NEW',
    style: TextStyle(fontSize: 22.0,color: Colors.blueAccent,fontWeight: FontWeight.bold),
    children: const <TextSpan>[
      TextSpan(text: 'MFX', style: TextStyle(color: Colors.yellow)),
      TextSpan(text: ' Quiz!',style: TextStyle(color: Color.fromARGB(255, 109, 34, 6))),
    ],
  ),
),
      ),
        body: PerguntaWidget(),
      ),
    );
  }
}

class Pergunta {
  final String texto;
  final List<String> respostas;
  final String respostaCorreta;
  final int peso;
  final String? imagemPergunta;
  final List<String?>? imagensRespostas;

  Pergunta({
    required this.texto,
    required this.respostas,
    required this.respostaCorreta,
    required this.peso,
    this.imagemPergunta,
    this.imagensRespostas,
  });
}


class PerguntaWidget extends StatefulWidget {
  @override
  _PerguntaWidgetState createState() => _PerguntaWidgetState();
}

class _PerguntaWidgetState extends State<PerguntaWidget> {
  final List<Pergunta> perguntas = [
    Pergunta(
      texto: 'Qual o sobrenome da Saori?',
      respostas: ['Kido', 'Croft', 'Soel', 'Luthay'],
      respostaCorreta: 'Kido',
      peso: 2,
    ),
    Pergunta(
      texto: 'Qual a capital da França?',
      respostas: ['Berlim', 'Madrid', 'Paris', 'Lisboa'],
      respostaCorreta: 'Paris',
      peso: 3,
    ),
    Pergunta(
      texto: 'Qual é o maior planeta do sistema solar?',
      respostas: ['Terra', 'Marte', 'Júpiter', 'Saturno'],
      respostaCorreta: 'Júpiter',
      peso: 4,
    ),
  ];

  int _perguntaAtual = 0;
  bool _respondeuCorretamente = false;

  void _responder(String resposta) {
    setState(() {
      _respondeuCorretamente = perguntas[_perguntaAtual].respostaCorreta == resposta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            perguntas[_perguntaAtual].texto,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: EdgeInsets.all(20),
            children: perguntas[_perguntaAtual].respostas.map((resposta) {
              return ElevatedButton(
                onPressed: () => _responder(resposta),
                child: Text(resposta),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Text(
            _respondeuCorretamente
                ? 'Resposta correta!'
                : 'Resposta incorreta!',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: _respondeuCorretamente ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
