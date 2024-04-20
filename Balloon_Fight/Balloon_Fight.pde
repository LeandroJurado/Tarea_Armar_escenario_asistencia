public Balloon pj;
public Fondo fondo;
public Bu bu;
public Bloque blo;
public Nube nu;

public void setup() {
  size(800, 600);
 
  fondo = new Fondo();
  fondo.posicion = new PVector(width/2, height/2);
  
  pj = new Balloon();
  pj.posicion = new PVector(width/2, height/2);
  pj.vel = new PVector(15, 15);
  
  bu = new Bu();
  bu.velBu = new PVector(12, 0);
  bu.posicionB = new PVector(width/2, height/2);
  
  blo = new Bloque();
  
  nu = new Nube();
  
}

public void draw() {
  background(0);
  fondo.dibujar();
  bu.dibujar();
  blo.dibujarBlo();
  nu.dibujarN();
  
  pj.dibujar();
}

public void keyPressed() {
  if (key == 'd') {
    pj.mover(0);
  }
  if (key == 'a') {
    pj.mover(1);
  }
  if (key == 'w') {
    pj.mover(2);
  }
  if (key == 's') {
    pj.mover(3);
  }
}
