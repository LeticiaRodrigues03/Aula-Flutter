void main() {
  int n = 6;

  int ultimo = 2;
  int proximo;
  int j = 3;
  
  print("$ultimo");
  if(n >= 0 && n < 100) {  
    for(int i=1; i<=n; i++){
       for(j; j<=11; j++){
        if(j % 2 != 0) {
          proximo = ultimo + j;
          print("$proximo");
          ultimo = proximo;    
        }
      }
    }    
      
  }else {
      print("Erro. Solicite o valor novamente!");
  }
}
