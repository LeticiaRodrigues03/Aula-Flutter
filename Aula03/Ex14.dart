void main() {
  int antepenultimo = 1; 
  int penultimo = 1;
  int ultimo = 1;
  int proximo = 0;
 
  print("1: $antepenultimo");
  print("2: $penultimo");
  print("3: $ultimo");
 do{
   for(int i = 4; i <= 20; i++) {
     proximo = antepenultimo + penultimo + ultimo;
     antepenultimo = penultimo;
     penultimo = ultimo;
     ultimo = proximo;
     print("$i: $proximo");
   }
 }while(proximo <= 20);
}
