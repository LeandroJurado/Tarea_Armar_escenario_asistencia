class Bloque {
  
  int bloqueAlto=50;
  int bloqueAncho=50;
  int numR = 3;
  int numC = width/bloqueAlto;
 
  public void dibujarBlo(){
    
    for (int i = 0; i <numR;i++){
      for (int j = 0; j < numC; j++) {
        rect(j * bloqueAlto, height - (i + 1) * bloqueAncho, bloqueAlto, bloqueAncho);
        fill(#BF4600);
      }
    }
  }
}
