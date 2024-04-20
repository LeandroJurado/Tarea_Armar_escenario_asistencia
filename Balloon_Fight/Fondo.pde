class Fondo{
  public PImage imagenF;
  public PVector posicion;
  
  //CONSTRUCTOR
  public Fondo(){
    imagenF = loadImage("fondoC.png");
   
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagenF,posicion.x,posicion.y,width,height);
  }
}
