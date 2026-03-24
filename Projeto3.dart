// O código poderia ser bem curto, mas tentei seguir os principios S.O.L.I.D
// Tipos de ataques:
abstract class Ataque{ 
  String atacar();
}

class AtaqueEspada implements Ataque{
  @override
  String atacar() => "Usando espada";
}

class AtaqueMagia implements Ataque{
  @override
  String atacar() => "Usando magia";
}

class AtaqueArtesMarciais implements Ataque{
  @override
  String atacar() => "Usando artes marciais";
}

class AtaqueShuriken implements Ataque{
  @override
  String atacar() => "Usando shuriken";
}

// Herois:
abstract class Hero{
  String nome;
  int idade;
  Ataque ataque;

  Hero(this.nome, this.idade, this.ataque);

  void atacar() => print('O $runtimeType atacou ${ataque.atacar()}');
}

class Guerreiro extends Hero{
  Guerreiro(String nome, int idade) : super(nome, idade, AtaqueEspada());
}
class Mago extends Hero{
  Mago(String nome, int idade) : super(nome, idade, AtaqueMagia());
}
class Monge extends Hero{
  Monge(String nome, int idade) : super(nome, idade, AtaqueArtesMarciais());
}
class Ninja extends Hero{
  Ninja(String nome, int idade) : super(nome, idade, AtaqueShuriken());
}

void main(){
  var h1 = Guerreiro('Aragorn', 87);
  var h2 = Mago('Gandalf', 2019);
  var h3 = Monge('Tenzin', 45);
  var h4 = Ninja('Kakashi', 32);

  h1.atacar();
  h2.atacar();
  h3.atacar();
  h4.atacar();
}
