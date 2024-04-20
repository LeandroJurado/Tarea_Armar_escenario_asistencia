class Balloon {
  public PVector posicion;
  public PImage imagenD;
  //public PImage imagenI;
  public PVector vel;
 
  
  //CONSTRUCTOR
  public Balloon(){
    imagenD = loadImage("balloonD.png");
    //imagenI = loadImage("balloonI.png");
  }
  
  public void dibujar(){
    imageMode(CENTER);
    image(imagenD,posicion.x,posicion.y,150,150);
    
  }
  
  public void mover(int direccion){
    if (direccion==0){
      this.posicion.x+=this.vel.x;
    }
    if(direccion==1){
      this.posicion.x-=this.vel.x;
    }
    if(direccion==2){
      this.posicion.y-=this.vel.y;
    }
    if(direccion==3){
      this.posicion.y+=this.vel.y;
    }
    
  }
}
