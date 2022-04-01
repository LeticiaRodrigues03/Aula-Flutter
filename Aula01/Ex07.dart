import 'dart:math';
void main() {
  double peso = 300;
  double altura = 1.80;

  
    double pesoFinal = peso / pow(altura, 2);
    if(pesoFinal < 18.5) {
      print("Abaixo do peso");
    }else if(pesoFinal < 24.9) {
      print("Peso normal");
    }else if (pesoFinal < 29.9 ) {
      print("Acima do peso");
    }else{
        print("Obesidade");
    }
}