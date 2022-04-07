void main() {
  
  var vetNome = ["Leticia", "Nalva", "Henrique", "Leda", "Darci"];
  var vetSexo = ["F", "F", "M", "F", "F"];
  var vetIdade = [23,60,22,58,56];
  var vetorNome;
  var vetorIdade;
  var vetorSexo;
  int i;
  for(i=0; i<=4; i++ ){
    if(vetSexo[i] == "F") {
      vetorNome = vetNome[i];
      vetorSexo = vetSexo[i];
      vetorIdade = vetIdade[i];
      print("Seu nome é: $vetorNome, seu sexo é: $vetorSexo e sua idade é: $vetorIdade");
    }
    
  }
  
}
