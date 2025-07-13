//https://youtu.be/8wpKxLZPEbQ?si=FrKLdSi2i6vo5Q-S

void setup() {
  size(800, 400);
  background(231, 227, 218);
  rectMode(CENTER);
  imageMode(CORNER); 
}

void draw() {
  background(231, 227, 218);
  PImage img1 = loadImage("img1.jpg");
  image(img1, 0, 0, width / 2, height);
  float tam = 90;

  boolean desactivarInversion = keyPressed && key == 'r';
  boolean invColores = estaEnZonaDerecha() && !desactivarInversion;
  boolean invDegradado = estaEnZonaDerecha() && !desactivarInversion;

  drawCuadradoConcentrico(663, 92, tam, invColores, invDegradado);
  drawCuadradoConcentrico(575, 308, tam, invColores, invDegradado); 
  drawCuadradoConcentrico(511, 155, tam, invColores, invDegradado); 
  drawCuadradoConcentrico(728, 244, tam, invColores, invDegradado); 
  drawCuadradoCentralRotado(620, 200, tam, !invColores);

  noFill();              
  stroke(30, 28, 30);            
  strokeWeight(28);      
  float lado = 400;    
  float x = 600;         
  float y = 200;
  rectMode(CENTER);      
  rect(x, y, lado, lado);
}

boolean estaEnZonaDerecha() {
  return mouseX > 400;
}

void drawCuadradoConcentrico(float x, float y, float tamaño, boolean invertir, boolean invDeg) {
  color azul = color(64, 110, 209);
  color rosa = color(173, 105, 169);
  int cantidad = 7;
  int rectan = 10;

  pushMatrix();
  translate(x, y);
  for (int i = cantidad - 1; i >= 0; i--) {
    float t = tamaño * (i + 1) / cantidad;
    if (invertir) {
      if (i % 2 == 0) fill(rosa);
      else fill(azul);
    } else {
      if (i % 2 == 0) fill(azul);
      else fill(rosa);
    }
    noStroke();
    rect(0, 0, t, t);
  }
  popMatrix();

  for (int i = 0; i < rectan; i++) {
    float f = invDeg ? rectan - 1 - i : i;
    float r = map(f, 0, rectan - 1, 185, 32);
    float g = map(f, 0, rectan - 1, 206, 57);
    float b = map(f, 0, rectan - 1, 229, 105);
    fill(r, g, b);
    rect(510 + i * 7, 203 + i * 6, 90, 9);
  }

  for (int i = 0; i < rectan; i++) {
    float f = invDeg ? rectan - 1 - i : i;
    float r = map(f, 0, rectan - 1, 185, 32);
    float g = map(f, 0, rectan - 1, 206, 57);
    float b = map(f, 0, rectan - 1, 229, 105);
    fill(r, g, b);
    rect(510 + i * 7, 105 - i * 6, 93, 9);
  }

  for (int i = 0; i < rectan; i++) {
    float f = invDeg ? rectan - 1 - i : i;
    float r = map(f, 0, rectan - 1, 32, 185);
    float g = map(f, 0, rectan - 1, 57, 206);
    float b = map(f, 0, rectan - 1, 105, 229);
    fill(r, g, b);
    rect(665 + i * 7, 348 - i * 6, 93, 9);   
  }

  for (int i = 0; i < rectan; i++) {
    float f = invDeg ? rectan - 1 - i : i;
    float r = map(f, 0, rectan - 1, 32, 185);
    float g = map(f, 0, rectan - 1, 57, 206);
    float b = map(f, 0, rectan - 1, 105, 226);
    fill(r, g, b);
    rect(663 + i * 7, 140 + i * 6, 90, 9);
  }

  for (int i = 0; i < rectan; i++) {
    float f = invDeg ? rectan - 1 - i : i;
    float r = map(f, 0, rectan - 1, 185, 32);
    float g = map(f, 0, rectan - 1, 206, 57);
    float b = map(f, 0, rectan - 1, 229, 105);
    fill(r, g, b);
    rect(615 - i * 6, 92 + i * 7, 9, 90);
  }

  for (int i = 0; i < rectan; i++) {
    float f = invDeg ? rectan - 1 - i : i;
    float r = map(f, 0, rectan - 1, 185, 32);
    float g = map(f, 0, rectan - 1, 206, 57);
    float b = map(f, 0, rectan - 1, 229, 105);
    fill(r, g, b);
    rect(625 + i * 6, 306 - i * 7, 9, 90);
  }

  for (int i = 0; i < rectan; i++) {
    float f = invDeg ? rectan - 1 - i : i;
    float r = map(f, 0, rectan - 1, 185, 32);
    float g = map(f, 0, rectan - 1, 206, 57);
    float b = map(f, 0, rectan - 1, 229, 105);
    fill(r, g, b);
    rect(525 - i * 6, 309 - i * 7, 9, 90);
  }

  for (int i = 0; i < rectan; i++) {
    float f = invDeg ? rectan - 1 - i : i;
    float r = map(f, 0, rectan - 1, 32, 185);
    float g = map(f, 0, rectan - 1, 57, 206);
    float b = map(f, 0, rectan - 1, 105, 229);
    fill(r, g, b);
    rect(767 - i * 6, 160 - i * 7, 9, 90);
  }
}

void drawCuadradoCentralRotado(float x, float y, float tamaño, boolean invertir) {
  color azul = color(64, 110, 209);
  color rosa = color(173, 105, 169);
  int cantidad = 7;

  pushMatrix();
  translate(x, y);
  rotate(radians(45));
  for (int i = cantidad - 1; i >= 0; i--) {
    float t = tamaño * (i + 1) / cantidad;
    if (invertir) {
      if (i % 2 == 0) fill(rosa);
      else fill(azul);
    } else {
      if (i % 2 == 0) fill(azul);
      else fill(rosa);
    }
    noStroke();
    rect(0, 0, t, t);
  }
  popMatrix();
}

void keyPressed() {
 
}
