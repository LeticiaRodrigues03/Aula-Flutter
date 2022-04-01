void main() {
  double a = 20;
  double b = 20;
  double c = 10;
  
  if(a + b > c && a + c > b && c + b > a) {
    print("Forma triângulo");
    if(a != b && a != c && c != b) {
      print("É um triângulo Escaleno");
    }else if(a == b && a == c && c == b) {
      print("É um triângulo Eqüilátero");
    }else if(a == b || a == c || c == b) {
      print("É um triângulo Isósceles");
    }
  }else {
    print("Não forma triângulo");
  }
  
}
