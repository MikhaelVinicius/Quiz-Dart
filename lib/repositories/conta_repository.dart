import 'package:TI.quest/db.dart';
import 'package:TI.quest/models/Questao.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

class ContaRepository extends ChangeNotifier{
  late Database db;
  List<Questaos> _bancoDePerguntas = [];

  int _pontuacao = 0;

  get pontuacao => _pontuacao;
  List<Questaos> get bancoDePerguntas => _bancoDePerguntas;

  ContaRepository(){
    _initRepository();
  }
  

  _initRepository() async {
    await _getSaldo();
  }

  _getSaldo() async {
    db = await Db.instance.database;
    List perguntas = await db.query('perguntas', limit: 1);
    _pontuacao = perguntas.first['pontos'];
    notifyListeners();
  }

  setPontuacao(int valor) async{
    db = await Db.instance.database;
    db.update('perguntas', {
      'pontos': valor,
    });

    _pontuacao = valor;
    notifyListeners();



}
}