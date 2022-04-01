import 'dart:math';
void main() {
  double peso = 55;
  double altura = 1.67;

  
    double pesoFinal = peso/ pow(altura, 2);
    if(pesoFinal < 18.5) {
      print("Abaixo do peso");
    }else if(pesoFinal > 18,5 || pesoFinal < 24.9) {
      print("Peso normal");
    }
  
}