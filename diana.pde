PImage diana; 
PImage dardo; 
int dX = 500;
int dY = 500; 
boolean instruc = true;

void setup() {
  size(650, 650);
  diana = loadImage("diana.jpg");
  dardo = loadImage("dardo.png");
 
}

void draw() {

  image(diana, 0, 0, width, height);
  image(dardo, dX, dY, 100, 100);

  if (instruc) {
    fill(255, 0, 0);
    textSize(21);
    text("Mover el dardo con las teclas de flechas hasta el centro de la diana", 30,635);
  }
 
  if (dist( dX+10,dY+20, width / 2, height / 2) < 2) { 
    textSize(32);
    fill(255, 0, 0);
    text("¡Enhorabuena, lo conseguistes!", 100, 635);
  }
}

void keyPressed() {
  instruc = false;
  if (keyCode == LEFT) {
    dX = dX - 2;
  } else if (keyCode == RIGHT) {
    dX = dX + 2;
  } else if (keyCode == UP) {
    dY = dY - 2;
  } else if (keyCode == DOWN) {
    dY = dY + 2;
  }
}
