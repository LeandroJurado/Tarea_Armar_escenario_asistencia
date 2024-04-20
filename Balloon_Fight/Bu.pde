class Bu {
  PImage imagenB;
  PVector posicionB;
  PVector velBu;
  boolean buMovDer = true;
  
  public Bu() {
    imagenB = loadImage("bu.png");
    posicionB = new PVector(width / 2, height / 2);
    velBu = new PVector(5, 0); // Velocidad inicial
  }
  
  void dibujar() {
    image(imagenB, posicionB.x, posicionB.y,150,150);
    
    // Mover el objeto Bu
    if (buMovDer) {
      posicionB.add(velBu);
      if (posicionB.x + imagenB.width/5 >= width) {
        buMovDer = false;
        posicionB.x = width - imagenB.width/2;
      }
    } else {
      posicionB.sub(velBu);
      if (posicionB.x - imagenB.width/5 <= 0) {
        buMovDer = true;
        posicionB.x = imagenB.width/2;
      }
    }
  }
}
