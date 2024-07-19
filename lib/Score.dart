class Score {

  
  int pontos;

  Score(this.pontos);

  void recorde(int novaPontuacao){
    if(novaPontuacao > pontos){
      this.pontos = novaPontuacao;
    }
  }

}





 Score scoreDoUsuario = new Score(0);