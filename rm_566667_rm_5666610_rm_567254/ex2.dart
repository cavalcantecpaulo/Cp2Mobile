class BilheteUnico {
  final String titular;
  final double tarifa;
  double _saldo = 0;

  BilheteUnico(this.titular) : tarifa = 5.00;

  BilheteUnico.estudante(this.titular) : tarifa = 2.50;

  double getSaldo() {
    return this._saldo;
  }

  void recarregar(double valor) {
    if (valor <= 0) {
      print("${this.titular}: valor de recarga inválido");
    } else {
      this._saldo += valor;
      print(
        "${this.titular} recarregou R\$ ${valor.toStringAsFixed(2)} - saldo: R\$ ${_saldo.toStringAsFixed(2)}",
      );
    }
  }

  void passarCatraca() {
    if (_saldo >= tarifa) {
      this._saldo = this._saldo - this.tarifa;
      print(
        "${this.titular} passou na catraca (-R\$ ${this.tarifa.toStringAsFixed(2)}) - saldo: R\$ ${_saldo.toStringAsFixed(2)}",
      );
    } else {
      print(
        "${this.titular}: saldo insuficiente (R\$ ${_saldo.toStringAsFixed(2)})",
      );
    }
  }
}

void main() {
  BilheteUnico comum = BilheteUnico("Ana");
  BilheteUnico estudante = BilheteUnico.estudante("Bruno");

  comum.recarregar(12);

  comum.passarCatraca();
  comum.passarCatraca();
  comum.passarCatraca();

  estudante.recarregar(5);
  estudante.passarCatraca();
  estudante.passarCatraca();
  estudante.recarregar(-10);

  print("Saldo final de Ana: R\$ ${comum.getSaldo().toStringAsFixed(2)}");
  print("Saldo final de Bruno: R\$ ${estudante.getSaldo().toStringAsFixed(2)}");
}
