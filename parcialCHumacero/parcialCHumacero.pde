import processing.core.PImage;
import java.util.ArrayList;

// Variables
int monedas = 0; // Contador de monedas
int contador = 0;
PImage moneda;
PImage fondo;
ArrayList<Moneda> monedasList = new ArrayList<>();
Spawner spawner;

  void setup() {
  size(400, 400); // Tamaño de la ventana
  moneda = loadImage("moneda.png");
  fondo = loadImage("fondo.jpg");
  
  spawner = new Spawner();

  // Crear las monedas
  for (int i = 0; i < 10; i++) {
    monedasList.add(new Moneda(spawner.getX(), random(-height, 0), moneda));
  }
}

  void draw() {
  background(255); // Color de fondo
  image(fondo, 0, 0, width, height);

  // Dibujar y mover las monedas
   for (Moneda m : monedasList) {
    m.dibujar();
    m.mover();
    if (m.caida()) {
      monedas++;
    m.reiniciar(spawner.getX(), random(-height, 0));
    }
  }

  // Dibujar el contador de monedas
  fill(255);
  textSize(32);
  text("Monedas: " + monedas, 20, 40);
  text("Atrapadas: " + contador, 20, 80);
}
