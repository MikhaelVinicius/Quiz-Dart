import "package:TI.quest/db.dart";
import "package:flutter/material.dart";
import "package:sqflite/sqflite.dart";
import 'menu.dart';

/*Rode a aplicação pelo Debug aqui
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
*/


import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('quizBox');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Database',
      home: TestDatabaseScreen(),
    );
  }
}

class TestDatabaseScreen extends StatefulWidget {
  @override
  _TestDatabaseScreenState createState() => _TestDatabaseScreenState();
}

class _TestDatabaseScreenState extends State<TestDatabaseScreen> {
  late Box quizBox;

  @override
  void initState() {
    super.initState();
    quizBox = Hive.box('quizBox');
  }

  Future<void> _insertData() async {
    await quizBox.put('conta', 0);
    await quizBox.put('pontos', {'nome': 'User', 'pontos': 10});
    await quizBox.put('perguntas', {
      'texto': 'What is Flutter?',
      'respostas': '["A SDK", "A Framework", "A Language", "A Library"]',
      'respostaCorreta': 'A SDK',
      'peso': 1,
      'imagemPergunta': ''
    });
  }

  void _queryData() {
    var conta = quizBox.get('conta');
    var pontos = quizBox.get('pontos');
    var perguntas = quizBox.get('perguntas');

    print('Conta: $conta');
    print('Pontos: $pontos');
    print('Perguntas: $perguntas');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Database'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                await _insertData();
                _queryData();
              },
              child: Text('Test Database'),
            ),
          ],
        ),
      ),
    );
  }
}
