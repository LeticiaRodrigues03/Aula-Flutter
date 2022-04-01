  var vet = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
  int i;
 
  int vetor0;
  int vetor1;
  int vetorResultado;
  
  
  for(i = 1; i<=vet[19]; i++) {
    print("Vetor: $vet");
    vetor1 = vet[i];
    vetor0 = vet[0];
    vetorResultado = vet[0] * vet[i];
    print("Vetor1: $vetor1");
    print("Vetor0: $vetor0");
    print("Vetor Resultado: $vetorResultado");
    vet[0] = vet[i];
    vet[i] = vetorResultado;

  }
    
}