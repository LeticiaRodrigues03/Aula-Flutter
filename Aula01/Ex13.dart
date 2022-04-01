void main() {
  int antepenultimo = 1; 
  int penultimo = 1;
  int ultimo = 2;
  int proximo = 0;
 
  print("1: $antepenultimo");
  print("2: $penultimo");
  print("3: $ultimo");
 do{
   for(int i = 4; i <= 30; i++) {
     proximo = penultimo + ultimo;
     penultimo = ultimo;
     ultimo = proximo;
     print("$i: $proximo");
   }
 }while(proximo <= 30);
}
