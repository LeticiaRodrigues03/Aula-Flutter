void main() {
  double v = 10; 
  double vO = 0;
  double t = 5;
  double tO = 20;
  double a = v / tO;

  print("Aceleração: $a m/s²");
  
  v = vO + a * t;
 
  print("Velocidade em m/s: $v m/s");
  
  double vKm =  v * 3.6;
  
  print("Velocidade em Km: $vKm k/h");
  
   if(vKm <= 40) {
     print("Veículo muito lento");
   }else if(vKm > 40 && vKm <= 60) {
     print("Velocidade permitida");
   }else if(vKm > 60 && vKm <= 80) {
     print("Velocidade de cruzeiro");
   }else if(vKm > 80 && vKm <= 120) {
     print("Veículo rápido");
   }else if(vKm > 120) {
     print("Veículo muito rápido");
   }

}