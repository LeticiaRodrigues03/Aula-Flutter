import 'dart:math';

void main() {
  double peso = 80;
  double altura = 1.70;
  String sexo = "M";
  
    double pesoFinal = peso / pow(altura, 2);
    if(sexo == "F") {
      if(pesoFinal < 19) {
        print("Mulher Abaixo do Peso");
      }else if(pesoFinal > 19 && pesoFinal < 24) {
        print("Mulher Peso Ideal");
      }else if (pesoFinal  >= 24) {
        print("Mulher Acima do Peso");
      }  

    }else if (sexo == "M") {
      if(pesoFinal < 20) {
        print("Homem Abaixo do peso");
      }else if(pesoFinal > 20 && pesoFinal < 25) {
        print("Homem Peso normal");
       }else if (pesoFinal >= 25 ) {
        print("Homem Acima do peso");
       }  
    }
  }