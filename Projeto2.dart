String NivelRanqueada(int saldo){
  return switch(saldo){
    < 10 => "Ferro",
    < 21 => "Bronze",
    < 51 => "Prata",
    < 81 => "Ouro",
    < 91 => "Diamante",
    < 101 => "Lendário",
    _ => "Imortal",
  };
}


void main(){
  int saldo = 50;
  print("O Herói tem de saldo de $saldo está no nível de ${NivelRanqueada(saldo)}");
}
