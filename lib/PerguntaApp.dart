import 'package:TI.quest/ListaDePerguntas.dart';
import 'package:TI.quest/Score.dart';
import 'package:TI.quest/menu.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'pergunta.dart';


class PerguntaComponente extends StatefulWidget {
  final String dificuldade;

  PerguntaComponente({required this.dificuldade});

  @override
  _PerguntaComponenteState createState() => _PerguntaComponenteState();
}

class _PerguntaComponenteState extends State<PerguntaComponente> {
  int _perguntaAtual = 0;
  int _pontuacaoTotal = 0;
  List<int> perguntasFeitas = [];
  final int numeroMaximoPerguntas = 10;

  List<Pergunta> _filtrarPerguntasPorDificuldade() {
    switch (widget.dificuldade) {
      case 'fácil':
        return perguntas.where((p) => p.peso == 1).toList();
      case 'médio':
        return perguntas.where((p) => p.peso == 2).toList();
      case 'difícil':
        return perguntas.where((p) => p.peso == 3).toList();
      case 'muito difícil':
        return perguntas.where((p) => p.peso == 4).toList();
      default:
        return perguntas;
    }
  }

  void _responder(String resposta) {
    List<Pergunta> perguntasFiltradas = _filtrarPerguntasPorDificuldade();
   
    if (perguntasFeitas.length >= numeroMaximoPerguntas) {
      _mostrarPontuacaoFinal();
      return;
    }

    perguntasFeitas.add(_perguntaAtual);

    int perguntaAleatoriaIndex;
    do {
      perguntaAleatoriaIndex = Random().nextInt(perguntasFiltradas.length);
    } while (perguntasFeitas.contains(perguntaAleatoriaIndex) && perguntasFeitas.length < perguntasFiltradas.length);

    setState(() {
      bool acertou = perguntasFiltradas[_perguntaAtual].respostaCorreta == resposta;
      if (acertou) {
        _pontuacaoTotal += perguntasFiltradas[_perguntaAtual].peso;
        
      }
      _perguntaAtual = perguntaAleatoriaIndex;
    });

    if (perguntasFeitas.length >= perguntasFiltradas.length) {

      perguntasFeitas.clear();
    }
  }



  

  void _mostrarPontuacaoFinal() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Fim da Partida'),
          content: Text('Sua pontuação total é $_pontuacaoTotal.'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                _reiniciarJogo();
              },
            ),
          ],
        );
      },
    );
  }

  void _reiniciarJogo() {
    setState(() {
     scoreDoUsuario.recorde(_pontuacaoTotal);



    perguntasFeitas.clear();
    _pontuacaoTotal = 0;
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Menu(title: '',)),
    );
  }


  

  void _abortarPartida() {
    setState(() {
      perguntasFeitas.clear();
      _pontuacaoTotal = 0;
    });
    Navigator.pop(context); // Retornar ao menu
  }

  @override
  Widget build(BuildContext context) {
    List<Pergunta> perguntasFiltradas = _filtrarPerguntasPorDificuldade();
    return Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: _abortarPartida,
          ),
        ],
      ),
      body: Center(
        child: perguntasFiltradas.isEmpty
            ? Text('Nenhuma pergunta disponível para a dificuldade selecionada.')
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 210,
                    height: 210,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(perguntasFiltradas[_perguntaAtual].imagemPergunta.toString()),
                      ),
                      border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 2.0),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                 Container(
  margin: EdgeInsets.symmetric(horizontal: 20.0), // Margem lateral de 20 pixels
  child: Text(
    perguntasFiltradas[_perguntaAtual].texto,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
  ),
)
,
                  SizedBox(height: 20),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: EdgeInsets.all(20),
                    children: perguntasFiltradas[_perguntaAtual].respostas.map((resposta) {
                      return ElevatedButton(
                        onPressed: () => _responder(resposta),
                        child: Text(resposta),
                      );
                    }).toList(),
                  ),
                ],
              ),
      ),
    );
  }
}
