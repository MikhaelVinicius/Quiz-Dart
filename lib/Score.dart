import 'package:flutter/material.dart';


//Classe score incompleta, todas as implementações relacionadas a pontuação deve ser feita aqui.




class Score extends StatelessWidget {
  final int score;

  Score(this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Score: $score", style: TextStyle(fontSize: 50.0)),
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 100.0),
    );
  }
}
