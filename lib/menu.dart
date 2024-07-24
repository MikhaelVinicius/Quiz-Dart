import 'package:flutter/material.dart';
import 'package:TI.quest/PerguntaApp.dart';
import 'package:TI.quest/Score.dart';
import 'package:TI.quest/pergunta.dart';










class Menu extends StatefulWidget {
  final String title;

  Menu({required this.title});

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  String _dificuldadeSelecionada = 'aleatórias';

  void PerguntaApp() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PerguntaComponente(dificuldade: _dificuldadeSelecionada),
      ),
    );
  }

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
              TextSpan(
                  text: 'Ti',
                  style: TextStyle(
                      color: const Color.fromRGBO(68, 138, 255, 1),
                      fontSize: 25.0)),
              TextSpan(
                  text: 'Quest',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 235, 59),
                      fontSize: 25.0)),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Container(
            child:    Text(
            'Recorde: ${scoreDoUsuario.pontos}',
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold), 
            
           
          ),
            
            alignment: Alignment.topCenter,
            margin: EdgeInsets.all(85.0),
          
          ),
       
         ElevatedButton(
  onPressed: PerguntaApp,
  child: Text(
    'Iniciar Jogo',
    style: TextStyle(fontSize: 18), // Aumenta o tamanho do texto
  ),
  style: ElevatedButton.styleFrom(
    foregroundColor: Colors.white, backgroundColor: Color.fromARGB(255, 196, 43, 223), // Cor do texto
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding
    minimumSize: Size(200, 60), // Tamanho mínimo do botão
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12), // Bordas arredondadas
    ),
  ),
),

            DropdownButton<String>(
              value: _dificuldadeSelecionada,
              onChanged: (String? newValue) {
                setState(() {
                  _dificuldadeSelecionada = newValue!;
                });
              },
              items: <String>['aleatórias', 'fácil', 'médio', 'difícil', 'muito difícil']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
           
          ],
        ),
      ),
    );
  }
}




