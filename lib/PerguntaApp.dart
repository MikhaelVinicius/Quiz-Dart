import 'dart:math';

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
      texto: 'Sobre a linguagem de programação Python, ela é...?',
      respostas: ['Orientado a objetos', 'Baixo nível', 'Funcional', 'Obsoleta'],
      respostaCorreta: 'Orientada a objetos',
      peso: 2,
      imagemPergunta: 'https://brandslogos.com/wp-content/uploads/images/large/python-logo.png',
    ),
    Pergunta(
      texto: 'Qual a capital da França?',
      respostas: ['Berlim', 'Madrid', 'Paris', 'Lisboa'],
      respostaCorreta: 'Paris',
      peso: 3,
      imagemPergunta: 'http://pluspng.com/img-png/android-png-android-logo-png-1024.png'
    ),
    Pergunta(
      texto: 'Qual é o maior planeta do sistema solar?',
      respostas: ['Terra', 'Marte', 'Júpiter', 'Saturno'],
      respostaCorreta: 'Júpiter',
      peso: 4,
      imagemPergunta: 'http://pluspng.com/img-png/android-png-android-logo-png-1024.png'
    ),Pergunta(
  texto: 'Quem escreveu "Dom Casmurro"?',
  respostas: ['Machado de Assis', 'José de Alencar', 'Eça de Queirós', 'Graciliano Ramos'],
  respostaCorreta: 'Machado de Assis',
  peso: 2,
  imagemPergunta: 'http://pluspng.com/img-png/android-png-android-logo-png-1024.png'
),
Pergunta(
  texto: 'Qual é o elemento químico com o símbolo "O"?',
  respostas: ['Ouro', 'Oxigênio', 'Osmium', 'Ósmio'],
  respostaCorreta: 'Oxigênio',
  peso: 3,
  imagemPergunta: 'https://1000logos.net/wp-content/uploads/2020/09/Umbrella-Corporation-Logo-1536x960.png'
),
Pergunta(
  texto: 'Quantos estados tem o Brasil?',
  respostas: ['24', '25', '26', '27'],
  respostaCorreta: '26',
  peso: 4,
    imagemPergunta: 'https://1000logos.net/wp-content/uploads/2020/09/Umbrella-Corporation-Logo-1536x960.png'
),
Pergunta(
  texto: 'Quem pintou a Mona Lisa?',
  respostas: ['Michelangelo', 'Leonardo da Vinci', 'Raphael', 'Donatello'],
  respostaCorreta: 'Leonardo da Vinci',
  peso: 2,
    imagemPergunta: 'https://1000logos.net/wp-content/uploads/2020/09/Umbrella-Corporation-Logo-1536x960.png'
),
Pergunta(
  texto: 'Qual é a capital do Japão?',
  respostas: ['Pequim', 'Seul', 'Tóquio', 'Bangkok'],
  respostaCorreta: 'Tóquio',
  peso: 3,
    imagemPergunta: 'https://1000logos.net/wp-content/uploads/2020/09/Umbrella-Corporation-Logo-1536x960.png'
),
Pergunta(
  texto: 'Qual é a fórmula química da água?',
  respostas: ['CO2', 'H2O', 'O2', 'NaCl'],
  respostaCorreta: 'H2O',
  peso: 2,
    imagemPergunta: 'https://1000logos.net/wp-content/uploads/2020/09/Umbrella-Corporation-Logo-1536x960.png'
),
Pergunta(
  texto: 'Que cidade é essa?',
  respostas: ['Arcoverde a melhor cidade do mundo', 'Recife', 'Garanhuns', 'Hiroshima'],
  respostaCorreta: '1969',
  peso: 4,
    imagemPergunta: 'https://jornaldosertaope.com.br/wp-content/uploads/2020/09/Vista-panoramica-da-cidade-de-Arcoverde-Foto-Divulgacao-scaled.jpg'
),
Pergunta(
  texto: 'Qual é o maior oceano do mundo?',
  respostas: ['Atlântico', 'Pacífico', 'Índico', 'Ártico'],
  respostaCorreta: 'Pacífico',
  peso: 3,
  
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
  texto: 'Qual é o nome do personagem principal de "O Senhor dos Anéis"?',
  respostas: ['Frodo', 'Gandalf', 'Aragorn', 'Legolas'],
  respostaCorreta: 'Frodo',
  peso: 2,
  
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
  texto: 'Qual é a velocidade da luz?',
  respostas: ['300,000 km/s', '150,000 km/s', '400,000 km/s', '500,000 km/s'],
  respostaCorreta: '300,000 km/s',
  peso: 4,
  
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
  texto: 'Qual é o menor país do mundo?',
  respostas: ['Mônaco', 'Nauru', 'Vaticano', 'Malta'],
  respostaCorreta: 'Vaticano',
  peso: 3,
  
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
  texto: 'Qual é o nome da galáxia em que vivemos?',
  respostas: ['Andrômeda', 'Via Láctea', 'Triângulo', 'Sagittarius'],
  respostaCorreta: 'Via Láctea',
  peso: 2,
  
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
  texto: 'Qual é a moeda oficial do Reino Unido?',
  respostas: ['Euro', 'Dólar', 'Libra esterlina', 'Franco suíço'],
  respostaCorreta: 'Libra esterlina',
  peso: 3,
  
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
  texto: 'Quem descobriu o Brasil?',
  respostas: ['Cristóvão Colombo', 'Pedro Álvares Cabral', 'Vasco da Gama', 'Ferdinando Magalhães'],
  respostaCorreta: 'Pedro Álvares Cabral',
  peso: 2,
  
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
  texto: 'Qual é a montanha mais alta do mundo?',
  respostas: ['K2', 'Kangchenjunga', 'Lhotse', 'Everest'],
  respostaCorreta: 'Everest',
  peso: 4,
  
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),

  ];

 bool _respondeuCorretamente = false;


  



















  //AQUI É ONDE QUAL PERGUNTA É SELECIONADO, PARA FINS DE TESTES _perguntaAtual É O INDEX DA LISTA DE PERGUNTA, NO CASO A PRIMEIR PERGUNTA.
  //CRIE O MÉTODO RESPONSÁVEL PARA A SEQUENCIA DE PERGUNTAS DURANTE AS PARTIDAS AQUI E SUBSTITUA NO MAP DE 'Widget build' PARA A SEQUENCIA DE PERGUNTAS.


  //VARIÁVEL PARA FINS DE CONFIRMAÇÃO DE RESPOSTA CORRETA
 

  //MÉTODO RESPONSÁVEL PARA RESPONDER, ESTÁ INCOMPLETA E DEVE SER APRIMORADA ADICIONANDO OS ATRIBUTOS SOBRE PONTUAÇÃO.
int _perguntaAtual = 0;
List<int> perguntasFeitas = [];
int _pontuacaoTotal = 0; // Variável para armazenar a pontuação total
final int numeroMaximoPerguntas = 10; // Defina o número máximo de perguntas

void _responder(String resposta) {
  if (perguntasFeitas.length >= numeroMaximoPerguntas) {

    _mostrarPontuacaoFinal();
    return;
  }

  perguntasFeitas.add(_perguntaAtual);

  int perguntaAleatoriaIndex;
  do {
    perguntaAleatoriaIndex = Random().nextInt(perguntas.length);
  } while (perguntasFeitas.contains(perguntaAleatoriaIndex) && perguntasFeitas.length < perguntas.length);


  setState(() {
    bool acertou = perguntas[_perguntaAtual].respostaCorreta == resposta;
    if (acertou) {
      _pontuacaoTotal += perguntas[_perguntaAtual].peso;
    }
    _perguntaAtual = perguntaAleatoriaIndex;
  });


  if (perguntasFeitas.length >= perguntas.length) {
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

// Função para reiniciar o jogo
void _reiniciarJogo() {
  setState(() {
    _perguntaAtual = 0;
    perguntasFeitas.clear();
    _pontuacaoTotal = 0;
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
        
        ],
      ),
    );
  }
}
