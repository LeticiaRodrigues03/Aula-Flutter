class Cliente {
  String nome;
  String cpf;
  DateTime nascimento;
}


class Conta {
   int numeroConta;
   String titular;
   double saldo;

  Conta(this.numeroConta, this.titular, this.saldo);

  bool sacar(double valor) {
    if(valor < saldo) {
      saldo = saldo - valor;
      return true;
    } else {
      return false;
    }
  }

  bool depositar(double valor) {
    saldo = saldo + valor;
    return true;
  }

  bool transferir(Conta contaDestino, double valor) {
    bool retirou = sacar(valor);
    if(retirou) {
      contaDestino.depositar(valor);
      return true;
    } else {
      return false;
    }
    
  }
}

import 'Conta.dart';

class ContaCorrente extends Conta {
  ContaCorrente(int numeroConta, String titular, double saldo) : super(numeroConta, titular, saldo);
  
   void gerarTaxa() {
     saldo = saldo - 15.90;
   }

}

import 'Conta.dart';

class ContaPoupanca extends Conta {
  ContaPoupanca(int numeroConta, String titular, double saldo) : super(numeroConta, titular, saldo);
  
       void gerarTaxa() {
      saldo += saldo * .006;
      }
}