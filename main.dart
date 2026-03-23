void main(){
  //linguagem: dart                                      | 
  //Variáveis: int xp                                    | Linha: 8
  //Operadores: comparativo                              | Linha: 11~17
  //Laços de repetição: não precisava, mas utilizei o for| Linha: 21
  //Estruturas de decisões: switch                       | Linha: 10
  
  int xp = 1000;

  String mensagem = switch(xp){
    < 1000 => "Ferro",
    < 2000 => "Bronze",
    < 5000 => "Prata",
    < 7000 => "Ouro",
    < 8000 => "Platina",
    < 9000 => "Ascendente",
    < 10000 => "Imortal",
    _ => "Radiante",
  };

  for(int i = 0; i < 1; i++){
    print(mensagem);
  }
}
