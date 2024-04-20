class Nube {
  PImage imagen;
  PVector posicionN;
  PVector velN;
  
  public Nube() {
    imagen = loadImage("nube.png");
    posicionN = new PVector(random(width), random(height / 2)); 
    velN = new PVector(random(1, 3), 0); 
  }
  
  public void dibujarN() {
    image(imagen, posicionN.x, posicionN.y);
    posicionN.add(velN);
    
    
    if (posicionN.x > width) {
      posicionN.x = -imagen.width;
      posicionN.y = random(height / 2); 
      velN.x = random(1, 3); 
    }
  }
}
