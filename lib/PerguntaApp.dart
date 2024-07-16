import 'dart:math';
import 'package:flutter/material.dart';
import 'package:TI.quest/pergunta.dart';


 
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
  int _perguntaAtual = 0;
  //LISTA DE PERGUNTAS, ADICIONE MAIS PERGUNTAS AQUI
  final List<Pergunta> perguntas = [
    Pergunta(
      texto: 'Sobre a linguagem de programação Python, ela é?',
      respostas: ['Orientado a objetos', 'Baixo nível', 'Funcional', 'Obsoleta'],
      respostaCorreta: 'Orientada a objetos',
      peso: 2,
      imagemPergunta:'https://brandslogos.com/wp-content/uploads/images/large/python-logo.png',
    ),
    Pergunta(
      texto: 'O que é um banco de dados?',
      respostas: ['Uma coleção organizada de dados que pode ser facilmente acessados, gerenciada e atualizadas', 'É um sistema operacional', 'Um conjunto de computadores interligados que compartilham informações', 'Uma linguagem de programação orientada a objetos'],
      respostaCorreta: 'Uma coleção organizada de dados que pode ser facilmente acessados',
      peso: 3,
      imagemPergunta: 'http://pluspng.com/img-png/android-png-android-logo-png-1024.png'
    ),
    Pergunta(
      texto: 'O que é o Computação em nuvem?',
      respostas: ['É a entrega de serviços de computação, como servidores, armazenamento, bancos de dados, rede, software, análises e inteligência, pela internet para oferecer inovações mais rápidas, recursos flexíveis e economia de escala.', 'Protocolo de Internet, é um conjunto de regras que governam o formato dos dados enviados pela internet ou por uma rede local.', 'Uma linguagem de programação é um conjunto de instruções e regras usadas para comunicar-se com o computador e criar programas de software', 'Um universo virtual, como um servidor para armazenar um dispositivo ou sistema operacional'],
      respostaCorreta: 'É a entrega de serviços de computação, como servidores, armazenamento, bancos de dados, rede, software, análises e inteligência, pela internet para oferecer inovações mais específas, recursos flexíveis e economia de escala.',
      peso: 4,
      imagemPergunta: 'http://pluspng.com/img-png/android-png-android-logo-png-1024.png'
    ),Pergunta(
  texto: 'O que é Cibersegurança?"?',
  respostas: ['Prática de proteger sistemas, redes e programas de ataques digitais. Esses ataques geralmente visam acessar, alterar ou destruir informações sensíveis, extorquir dinheiro dos usuários ou interromper processos normais de negócios', 'Uma linguagem de programação tipada', 'Simulação de processos de inteligência humana por máquinas, especialmente sistemas de computador', 'Criação de uma versão virtual de algo, como um servidor, uma rede, um dispositivo de armazenamento ou um sistema operacional. A virtualização permite que múltiplas instâncias de sistemas operacionais ou aplicações sejam executadas em um único hardware físico.'],
  respostaCorreta: 'prática de proteger sistemas, redes e programas de ataques digitais. Esses ataques geralmente visam acessar, alterar ou destruir informações sensíveis, extorquir dinheiro dos usuários ou interromper processos normais de negócios',
  peso: 2,
  imagemPergunta: 'http://pluspng.com/img-png/android-png-android-logo-png-1024.png'
),
Pergunta(
    texto: 'Qual linguagem de programação é usada para desenvolvimento de aplicativos Android?',
    respostas: ['Swift', 'Kotlin', 'Ruby', 'C#'],
    respostaCorreta: 'Kotlin',
  peso: 3,
  imagemPergunta: 'https://1000logos.net/wp-content/uploads/2020/09/Umbrella-Corporation-Logo-1536x960.png'
),
Pergunta(
  texto: 'O que é um firewall?',
    respostas: ['Um software antivírus', 'Uma rede de computadores', 'Um dispositivo de segurança de rede', 'Um sistema operacional'],
    respostaCorreta: 'Um dispositivo de segurança de rede',
  peso: 4,
    imagemPergunta: 'https://1000logos.net/wp-content/uploads/2020/09/Umbrella-Corporation-Logo-1536x960.png'
),
Pergunta(
 texto: 'O que é SQL usado para fazer?',
    respostas: ['Gerar relatórios', 'Desenvolver websites', 'Consultar e gerenciar bancos de dados', 'Criar gráficos'],
    respostaCorreta: 'Consultar e gerenciar bancos de dados',
  peso: 2,
    imagemPergunta: 'https://1000logos.net/wp-content/uploads/2020/09/Umbrella-Corporation-Logo-1536x960.png'
),
Pergunta(
  texto: 'O que significa a sigla "CPU"?',
    respostas: ['Central Processing Unit', 'Computer Personal Unit', 'Central Programming Unit', 'Computer Processing Unit'],
    respostaCorreta: 'Central Processing Unit',
  peso: 3,
    imagemPergunta: 'https://1000logos.net/wp-content/uploads/2020/09/Umbrella-Corporation-Logo-1536x960.png'
),
Pergunta(
    texto: 'Qual protocolo é usado para enviar e-mails?',
    respostas: ['HTTP', 'FTP', 'SMTP', 'IMAP'],
    respostaCorreta: 'SMTP',
  peso: 4,
    imagemPergunta: 'https://1000logos.net/wp-content/uploads/2020/09/Umbrella-Corporation-Logo-1536x960.png'
),
Pergunta(
  texto: 'Qual é a função principal do sistema operacional?',
    respostas: ['Gerenciar software e hardware do computador', 'Desenvolver aplicativos', 'Proteger contra vírus', 'Manter a segurança da rede'],
    respostaCorreta: 'Gerenciar software e hardware do computador',
  peso: 4,
    imagemPergunta: 'https://jornaldosertaope.com.br/wp-content/uploads/2020/09/Vista-panoramica-da-cidade-de-Arcoverde-Foto-Divulgacao-scaled.jpg'
),
Pergunta(
  texto: 'Qual linguagem é principalmente usada para desenvolvimento web front-end?',
    respostas: ['Java', 'C++', 'Python', 'JavaScript'],
    respostaCorreta: 'JavaScript',
  peso: 3,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
    texto: 'O que é um endereço IP?',
    respostas: ['Um endereço de Protocolo da Internet', 'Um tipo de memória de computador', 'Um software antivírus', 'Um dispositivo de rede'],
    respostaCorreta: 'Um endereço de Protocolo da Internet',
  peso: 3,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
   texto: 'Qual é a função do comando "ping"?',
    respostas: ['Verificar a conectividade de rede', 'Transferir arquivos', 'Configurar roteadores', 'Proteger contra malware'],
    respostaCorreta: 'Verificar a conectividade de rede',
  peso: 4,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
    texto: 'Qual é a diferença entre HTTP e HTTPS?',
    respostas: ['HTTPS usa criptografia para segurança, enquanto HTTP não', 'HTTP é mais rápido que HTTPS', 'HTTPS é usado apenas para e-mails', 'HTTP é um protocolo mais novo que HTTPS'],
    respostaCorreta: 'HTTPS usa criptografia para segurança, enquanto HTTP não',
  peso: 3,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
   texto: 'O que é um arquivo executável?',
    respostas: ['Um arquivo que contém um programa que pode ser executado pelo computador', 'Um tipo de arquivo de imagem', 'Um documento de texto', 'Um arquivo de áudio'],
    respostaCorreta: 'Um arquivo que contém um programa que pode ser executado pelo computador',
  peso: 2,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
  texto: 'Qual é a função de um roteador?',
    respostas: ['Direcionar pacotes de dados entre redes', 'Armazenar arquivos', 'Proteger contra vírus', 'Monitorar uso de CPU'],
    respostaCorreta: 'Direcionar pacotes de dados entre redes',
  peso: 2,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
   texto: 'O que é um malware?',
    respostas: ['Um software malicioso projetado para causar danos', 'Um tipo de firewall', 'Um programa de proteção de dados', 'Um dispositivo de rede'],
    respostaCorreta: 'Um software malicioso projetado para causar danos',
    peso: 3,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
   texto: 'O que é um backup de dados?',
    respostas: ['Uma cópia de dados armazenada para recuperação em caso de falha', 'Um programa de otimização de sistema', 'Um tipo de software de criptografia', 'Um dispositivo de rede'],
    respostaCorreta: 'Uma cópia de dados armazenada para recuperação em caso de falha',
    peso: 3,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
    texto: 'O que é o DevOps?',
    respostas: ['Uma prática que integra desenvolvimento de software e operações de TI', 'Um tipo de software de gerenciamento de projetos', 'Uma técnica de programação', 'Um protocolo de rede'],
    respostaCorreta: 'Uma prática que integra desenvolvimento de software e operações de TI',
    peso:3,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
    texto: 'O que é um algoritmo?',
    respostas: ['Uma sequência de instruções para resolver um problema', 'Um tipo de software de rede', 'Uma linguagem de programação', 'Um componente de hardware'],
    respostaCorreta: 'Uma sequência de instruções para resolver um problema',
    peso:4,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
),
Pergunta(
    texto: 'O que é um cookie no contexto da internet?',
    respostas: ['Um pequeno arquivo de dados armazenado no navegador do usuário', 'Um tipo de vírus de computador', 'Uma ferramenta de desenvolvimento web', 'Um protocolo de comunicação'],
    respostaCorreta: 'Um pequeno arquivo de dados armazenado no navegador do usuário',
    peso:3,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
  ),
  Pergunta(
    texto: 'O que é uma API?',
    respostas: ['Um conjunto de regras que permite que softwares diferentes interajam', 'Um tipo de banco de dados', 'Uma linguagem de programação', 'Um protocolo de rede'],
    respostaCorreta: 'Um conjunto de regras que permite que softwares diferentes interajam',
    peso:4,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
  ),
  Pergunta(
    texto: 'O que é a Internet das Coisas (IoT)?',
    respostas: ['A interconexão de dispositivos através da internet, permitindo que eles se comuniquem', 'Um tipo de banco de dados', 'Um protocolo de rede', 'Um software de segurança'],
    respostaCorreta: 'A interconexão de dispositivos através da internet, permitindo que eles se comuniquem',
    peso:4,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
  ),
  Pergunta(
    texto: 'O que é um ataque de phishing?',
    respostas: ['Uma tentativa de obter informações sensíveis disfarçando-se como uma entidade confiável', 'Um tipo de malware', 'Uma ferramenta de desenvolvimento', 'Um protocolo de rede'],
    respostaCorreta: 'Uma tentativa de obter informações sensíveis disfarçando-se como uma entidade confiável',
    peso:3,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'
  ),
  Pergunta(texto: 'O que é uma rede sem fio (wireless)?',
    respostas: ['Uma rede que usa ondas de rádio para transmitir dados', 'Uma rede que usa cabos de fibra ótica', 'Um tipo de dispositivo de armazenamento', 'Uma ferramenta de desenvolvimento'],
    respostaCorreta: 'Uma rede que usa ondas de rádio para transmitir dados',
     peso:3,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'),
Pergunta(
  texto: 'O que é a criptografia?',
    respostas: ['O processo de codificar informações para torná-las inacessíveis a usuários não autorizados', 'Um tipo de malware', 'Uma ferramenta de desenvolvimento', 'Um protocolo de rede'],
    respostaCorreta: 'O processo de codificar informações para torná-las inacessíveis a usuários não autorizados',
    peso:3,
    imagemPergunta: 'https://media.metrolatam.com/2019/11/18/lula-7bdd95d7832e5391412b7fd2f4f5ceca-1200x800.jpg'),
 




  ];

 bool _respondeuCorretamente = false;


  



















  //AQUI É ONDE QUAL PERGUNTA É SELECIONADO, PARA FINS DE TESTES _perguntaAtual É O INDEX DA LISTA DE PERGUNTA, NO CASO A PRIMEIR PERGUNTA.
  //CRIE O MÉTODO RESPONSÁVEL PARA A SEQUENCIA DE PERGUNTAS DURANTE AS PARTIDAS AQUI E SUBSTITUA NO MAP DE 'Widget build' PARA A SEQUENCIA DE PERGUNTAS.


  //VARIÁVEL PARA FINS DE CONFIRMAÇÃO DE RESPOSTA CORRETA
 

  //MÉTODO RESPONSÁVEL PARA RESPONDER, ESTÁ INCOMPLETA E DEVE SER APRIMORADA ADICIONANDO OS ATRIBUTOS SOBRE PONTUAÇÃO.
int perguntaAtual = 0;
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



