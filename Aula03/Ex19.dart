void main() {
  
  var vetNome = ["Leticia", "Nalva", "Henrique", "Leda", "Darci"];
  var vetIdade = [23,60,22,58,56];
  var vetorNome;
  var vetorIdade;
  int i;
  for(i=0; i<=4; i++ ){
    vetorNome = vetNome[i];
    vetorIdade = vetIdade[i];
    print("Seu nome é: $vetorNome e sua idade é: $vetorIdade");
  }
  
}