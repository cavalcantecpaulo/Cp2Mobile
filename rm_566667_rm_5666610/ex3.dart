class ItemPedido {
  final String nome;
  final double preco;
  final int quantidade;

  ItemPedido({
    required this.nome,
    required this.preco,
    required this.quantidade,
  });

  void exibirLinha() {
    double subtotal = preco * quantidade;
    print('$quantidade x $nome (R\$ ${preco.toStringAsFixed(2)}) = ${subtotal.toStringAsFixed(2)}');
  }
}

class Pedido {
  final String cliente;
  List<ItemPedido> itens = [];

  Pedido(this.cliente);

  void adicionarItem(ItemPedido item) {
    itens.add(item);
  }

  void mostrarResumo() {
    double valorTotal = 0.0;
    for (ItemPedido p in itens) {
      p.exibirLinha();
      valorTotal+=p.preco * p.quantidade;
    }

    double desconto = valorTotal * 0.10;
    double valorFinal = valorTotal - desconto;
    print("Subtotal: R\$ ${valorTotal.toStringAsFixed(2)}");
    print("Desconto (10%): R\$ ${desconto}");
    print("Total a pagar: R\$ ${valorFinal.toStringAsFixed(2)}");
  }
}

void main() {
  ItemPedido item1 = ItemPedido(nome: 'Teclado', preco: 150.00, quantidade: 1);
  ItemPedido item2 = ItemPedido(nome: 'Mouse', preco: 89.90, quantidade: 2);
  ItemPedido item3 = ItemPedido(nome: 'Mousepad', preco: 35.50, quantidade: 1);

  Pedido pedido = Pedido("Carla");
  pedido.adicionarItem(item1);
  pedido.adicionarItem(item2);
  pedido.adicionarItem(item3);

    
  print("Pedido de ${pedido.cliente}");
  pedido.mostrarResumo();
}
