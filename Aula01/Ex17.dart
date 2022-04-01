void main() {

  var vet = [1,2,3,4];
  int i;
  int maior;
  int vetor;
  
  maior = vet[0];
  for(i = 1; i<vet[3]; i++) {
    if(vet[i] > maior) {
      maior = vet[i];
    }
  }
  
  print("Vetor: $vet");

  print("Maior: $maior");
    
}