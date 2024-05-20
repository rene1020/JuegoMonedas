class Spawner {
  float x;
  
  Spawner() {
    cambiarPosicion();
  }
  
  void cambiarPosicion() {
    x = random(width);
  }
  
  float getX() {
    cambiarPosicion();
    return x;
  }
}
