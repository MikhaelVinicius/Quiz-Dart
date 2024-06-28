import 'package:flutter/material.dart';
import 'package:saori_kido_quiz_bayo/pergunta.dart';

 
/* 

A classe PerguntaApp é a classe que aplica o componente pergunta propriamente em si.
Ela não é responsável pela construção do componente, mas pela a aplicação.

Está classe também é responsável pelo Haerder da página

Quando se refere a algo que não está dentro do escopo do componente pergunta, como por exemplo o Header como mencionado anteriormente, 
essa competencia deve ser aplicada a está classe. Mas dificilmente algo que esteja dentro da proposta atual do projeto deve ser adicionado a 
está classe.

Como podem ver ela é uma classe que extende StatelessWidget, ou seja, é uma classe estática, inerte a mudanças. Qualquer modificação aqui tenha em mente que ele é imutável, como títulos o logos. 

*/
class PerguntaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                    text: ' Web!',
                    style: TextStyle(color: Color.fromARGB(255, 109, 34, 6))),
              ],
            ),
          ),
        ),
        body: PerguntaComponente(),
      ),
    );
  }
}

/*

A classe PerguntaComponente é a classe que cria o estado componente para ser rodado na aplicação PerguntaApp.
Dificilmente qualquer coisa deve ser feita aqui

 */

class PerguntaComponente extends StatefulWidget {
  @override
  _PerguntaComponenteState createState() => _PerguntaComponenteState();
}



/*

A classe _PerguntaComponenteState é a classe principal deste arquivo.

Aqui é onde todo o componente Pergunta é construido e também onde as perguntas são armazenadas em forma de Lista.

 */

class _PerguntaComponenteState extends State<PerguntaComponente> {

  //LISTA DE PERGUNTAS, ADICIONE MAIS PERGUNTAS AQUI
  final List<Pergunta> perguntas = [
    Pergunta(
      texto: 'Quem é essa mulher?',
      respostas: ['Saori Kido', 'Lara Croft', 'Beatriz Guerra', 'Mikhael'],
      respostaCorreta: 'Saori Kido',
      peso: 2,
      imagemPergunta: 'https://pbs.twimg.com/media/FqEuZD8WwBwWAmy.jpg',
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

  //AQUI É ONDE QUAL PERGUNTA É SELECIONADO, PARA FINS DE TESTES _perguntaAtual É O INDEX DA LISTA DE PERGUNTA, NO CASO A PRIMEIR PERGUNTA.
  //CRIE O MÉTODO RESPONSÁVEL PARA A SEQUENCIA DE PERGUNTAS DURANTE AS PARTIDAS AQUI E SUBSTITUA NO MAP DE 'Widget build' PARA A SEQUENCIA DE PERGUNTAS.
  int _perguntaAtual = 0;

  //VARIÁVEL PARA FINS DE CONFIRMAÇÃO DE RESPOSTA CORRETA
  bool _respondeuCorretamente = false;

  //MÉTODO RESPONSÁVEL PARA RESPONDER, ESTÁ INCOMPLETA E DEVE SER APRIMORADA ADICIONANDO OS ATRIBUTOS SOBRE PONTUAÇÃO.
  void _responder(String resposta) {
    setState(() {
      _respondeuCorretamente =
          perguntas[_perguntaAtual].respostaCorreta == resposta;
    });
  }



  /* 
  
  Aqui é onde o componente de perguntas é propriamente construido
  
   */
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 210,
            height: 210,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      perguntas[_perguntaAtual].imagemPergunta.toString())),
              border: Border.all(
                  color: const Color.fromARGB(255, 0, 0, 0), width: 2.0),
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
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
            children: perguntas[_perguntaAtual].respostas.map((resposta) { //O MÉTODO PARA A APLICAÇÃO DAS PERGUNTAS DENTRO DA LISTA DEVE SER ADICIONADO AQUI
              return ElevatedButton(
                onPressed: () => _responder(resposta),
                child: Text(resposta),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Text( // Esse linha de código deve ser aprimorada para a implementação do Score
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
