import 'package:TI.quest/db.dart';
import 'package:TI.quest/lib/lib/models/posicao.dart';
import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

class ContaRepository extends ChangeNotifier{
  late Database db;
  List<Posicao> _pontos = [];
  double _conta = 0;

  get pontos => _pontos;

  ContaRepository(){
    _initRepository();
  }
  _initRepository() async{
    await _getPerguntas();
  }
  _getPerguntas() async{
    db = await Db.instance.database;
    List conta = await db.query("conta", limit: 1);
    _pontos = conta.first["pontos"];
    notifyListeners();
  }
  setPontos(double valor) async{
    db = await Db.instance.database;
    db.update("conta", {
      "saldo": valor
    });
    _pontos = valor as List<Posicao>;
    notifyListeners();
  
  }
}