PImage frogger1; 
PImage frogger2;
PImage digger;
PImage logo;
PImage ending;

int milliseconds = 0;

int diggerTicker = 0;

int x1 = 300;
int y1 = 640;

int x = 8;
int y = 1;
// 15 is the top

int diggerX = 20;

void setup() {
 size(600, 700);
 background(0, 0, 0);
 frogger1 = loadImage("frogger.png");
 frogger2 = loadImage("frogger2.png");
 //resize(40, 37);
 digger = loadImage("digger_ani.gif");
 logo = loadImage("froggerLogo.png");

 ending = loadImage("ending.png");
 frameRate(9);
}

void draw() {
  image(logo, 145, 40);
  image(digger, diggerX, 600);
  image(digger, diggerX, 525);
  image(frogger1, x1, y1);
  image(ending, 0, 80);
  fill(255, 255, 255);
  line(0, 75, 600, 75);
  if (keyPressed) {
    if (keyCode == 38) {
      if(y != 14) {
      fill(0, 0, 0);
      rect(x1, y1, 40, 37);
      y1 -= 40;
      y += 1;
      }
    }
  }
 if (keyPressed) {
    if (keyCode == 37) {
      if(x != 1) {
      fill(0, 0, 0);
      rect(x1, y1, 40, 37);
      x1 -= 40;
      x -= 1;
      }
    }
  } 
  if (keyPressed) {
    if (keyCode == 39) {
      if(x != 14) {
      fill(0, 0, 0);
      rect(x1, y1, 40, 37);
      x1 += 40;
      x += 1;
      }
    }
  } 
  if (keyPressed) {
    if (keyCode == 40) {
      if(y != 1) {
      fill(0, 0, 0);
      rect(x1, y1, 40, 37);
      y1 += 40;
      y -= 1;
      }
    }
  } 
  diggerX += 80;
  if(x1 == diggerX && y1 == 600) {
    background(255, 255, 255);
  }
  if(x == 7 && y == 14) {
    image(frogger2, x1 + 15, y1);
    x1 = 300;
    y1 = 640;
  }
  if(x == 8 && y == 14) {
    image(frogger2, x1, y1);
    x1 = 300;
    y1 = 640;
  }
  println("X: " + x);
  println("Y: " + y);
} 
