class Moneda {
  float x, y;
  PImage img;
  float velocidad = 1;
  
  Moneda(float x, float y, PImage img) {
    this.x = x;
    this.y = y;
    this.img = img;
  }
  
  void dibujar() {
    image(img, x, y, 20, 20);
  }
  
  void mover() {
    y += velocidad;
  }
  
  boolean caida() {
    return y > height;
  }
  
  void reiniciar(float nuevoX, float nuevoY) {
    x = nuevoX;
    y = nuevoY;
  }
}
