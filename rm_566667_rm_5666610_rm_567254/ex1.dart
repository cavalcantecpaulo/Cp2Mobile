class Pet {
  String nome;
  String especie;
  int idade;
  double peso;

  Pet(this.nome, this.especie, this.idade, this.peso);

  void exibirFicha() {
    String exibicao = "$nome ($especie) - $idade anos - $peso kg -";

    if (idade <= 1) {
      print("$exibicao Filhote");
    } else if (idade <= 7) {
      print("$exibicao Adulto");
    } else {
      print("$exibicao Idoso");
    }
  }

  void fazerAniversario() {
    idade++;

    print("Parabéns, ($nome)! Agora com $idade anos.");
  }
}

void main() {
  //Criar lista Pets

  List<Pet> pets = [
    Pet("Thor", "Cachorro", 3, 28.5),
    Pet("Mia", "Gato", 1, 4.2),
    Pet("Bob", "Cachorro", 9, 12.0),
    Pet("Nina", "Coelho", 2, 1.8),
  ];

  //Percorrer elementos com exibirFicha

  for (Pet p in pets) {
    p.exibirFicha();
  }

  //Chamar método fazerAniversario no pets[1] e exibir ficha

  pets[1].fazerAniversario();

  pets[1].exibirFicha();

  double maiorPeso = 0;

  Pet petMaiorPeso = pets[0];

  for (Pet p in pets) {
    if (p.peso > maiorPeso) {
      maiorPeso = p.peso;

      petMaiorPeso = p;
    }
  }

  print('Pet mais pesado: ${petMaiorPeso.nome} (${petMaiorPeso.peso} kg)');
}
