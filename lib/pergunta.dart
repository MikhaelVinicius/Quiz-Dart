import 'package:flutter/material.dart';

//Classe pergunta, nada deve ser alterado aqui

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
