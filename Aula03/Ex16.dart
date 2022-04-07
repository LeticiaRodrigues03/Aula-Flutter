void main() {
  int c1 = 1;
  int c2 = 2;
  int c3 = 3;
  int c4 = 4;
  int c5 = 5;
  int c6 = 6;
  int c7 = 7;
  int c8 = 8;
  int c9 = 9;
  int c10 = 10;
  
  final lista = [c1, c2, c3,c4, c5, c6, c7, c8, c9, c10];

  for(int i=lista.length; i>0; i--) {
    print(" Lista: ${lista[i-1]}");
  }

}