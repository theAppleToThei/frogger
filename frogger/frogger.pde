//Beta Testing

PImage frogger1; 
PImage frogger2;
PImage digger;
PImage logo;
PImage ending;

Boolean gameFinish1 = false;
Boolean gameFinish2 = false;
Boolean gameFinish3 = false;
Boolean gameFinish4 = false;
Boolean gameFinish5 = false;

Boolean gameOver = false;

PFont defaultFont;

int milliseconds = 0;

int SCORE = 0;

int diggerTicker = 0;
int frameTicker = 0;

int x1 = 300;
int y1 = 640;

int x = 8;
int y = 1;
// 15 is the top

int diggerX = 20;
int diggerY = 600;
int diggerYRow2 = 525;
int diggerYRow3 = 450;
//int diggerX2 = 20;

int diggerGridX = diggerX / 16;
int diggerGridY = diggerY / 16;

void setup() {
  size(600, 700);
  background(0, 0, 0);
  frogger1 = loadImage("frogger.png");
  frogger2 = loadImage("frogger2.png");
  //resize(40, 37);
  digger = loadImage("digger_ani.gif");
  logo = loadImage("froggerLogo.png");
  //defaultFont = loadFont("defaultFont.ttf");
  ending = loadImage("ending.png");
  frameRate(9);
}

void draw() {
  background(0);
  image(logo, 145, 40);
  image(digger, diggerX, diggerY);
  image(digger, diggerX + 40, diggerYRow2);
  image(digger, diggerX + 120, diggerYRow3);

  if (gameOver == false) {
    image(frogger1, x1, y1);
  }
  image(ending, 0, 80);
  fill(255, 255, 255);
  line(0, 75, 600, 75);
  if (keyPressed) {
    if (keyCode == 38) {
      if (y != 14) {
        fill(0, 0, 0);
        y1 -= 40;
        y += 1;
        SCORE += 10;
      }
    }
  }
  if (keyPressed) {
    if (keyCode == 37) {
      if (x != 1) {
        fill(0, 0, 0);
        x1 -= 40;
        x -= 1;
      }
    }
  } 
  if (keyPressed) {
    if (keyCode == 39) {
      if (x != 14) {
        fill(0, 0, 0);
        x1 += 40;
        x += 1;
      }
    }
  } 
  if (keyPressed) {
    if (keyCode == 40) {
      if (y != 1) {
        y1 += 40;
        y -= 1;
      }
    }
  } 
  diggerX += 80;
  //if (x1 == diggerX && y1 == 600) {
  //  background(255, 255, 255);
  //}
  if (x == 7 && y == 14) {
    image(frogger2, 280, 120);
    x1 = 300;
    y1 = 640;
    y = 1;
    x = 8;
    SCORE += 1000;
    gameFinish1 = true;
  }
  if (x == 8 && y == 14) {
    image(frogger2, 280, 120);
    x1 = 300;
    y1 = 640;
    y = 1;
    x = 8;
    SCORE += 1000;
    gameFinish1 = true;
  }

  if (x == 1 && y == 14) {
    image(frogger2, 20, 120);
    x1 = 300;
    y1 = 640;
    y = 1;
    x = 8;
    SCORE += 1000;
    gameFinish2 = true;
  }

  if (x == 4 && y == 14) {
    image(frogger2, 150, 120);
    x1 = 300;
    y1 = 640;
    y = 1;
    x = 8;
    SCORE += 1000;
    gameFinish3 = true;
  }

  if (x == 10 && y == 14) {
    image(frogger2, 405, 120);
    x1 = 300;
    y1 = 640;
    y = 1;
    x = 8;
    SCORE += 1000;
    gameFinish4 = true;
  }
  
  if (x == 14 && y == 14) {
    image(frogger2, 530, 120);
    x1 = 300;
    y1 = 640;
    y = 1;
    x = 8;
    SCORE += 1000;
    gameFinish5 = true;
  }
  
  if (x == 13 && y == 14) {
    y1 = 160;
    y = 13;
    x = 13;
    SCORE -= 10;
  }
  
  if (x == 12 && y == 14) {
    y1 = 160;
    y = 13;
    x = 12;
    SCORE -= 10;
  }

  if (x == 2 && y == 14) {
    y1 = 160;
    y = 13;
    x = 2;
    SCORE -= 10;
  }

  if (x == 3 && y == 14) {
    y1 = 160;
    y = 13;
    x = 3;
    SCORE -= 10;
  }

  if (gameFinish1 == true) {
    image(frogger2, 280, 120);
  }

  if (gameFinish2 == true) {
    image(frogger2, 25, 120);
  }

  if (gameFinish3 == true) {
    image(frogger2, 150, 120);
    if (x == 4 && y == 14) {
      fill(255, 255, 255);
      text("You lost!", 200, 350);
      gameOver = true;
    }
  }

  if (gameFinish4 == true) {
    image(frogger2, 405, 120);
  }
  
    if (gameFinish5 == true) {
    image(frogger2, 530, 120);
  }
  
   if (gameFinish1 == true && gameFinish2 == true  && gameFinish3 == true && gameFinish4 == true && gameFinish5 == true) {
    fill(255, 255, 255);
    text("You won!", 200, 350);
  }

  if (x1 == diggerX && y1 == 600) {
    // TODO: Add digger coordinates 
    textSize(32);
    // textFont(defaultFont);
    fill(255, 255, 255);
    text("You lost!", 200, 350);
    //     gameOver = true;
    while (gameOver) {
    }
  }

  // TODO: Add digger coordinates 
  if (x1 % 2 == 0 && y == 2 && diggerX >= 0) {
    textSize(32);
    //textFont(defaultFont);
    fill(255, 255, 255);
    text("You lost!", 200, 350);
    //     gameOver = true;
    while (gameOver) {
    }
  }

  textSize(14);
  //textFont(defaultFont);
  fill(255, 255, 255);
  text("SCORE: " + SCORE, 10, 690);
  fill(0, 0, 0);
  if (diggerX <= width) {
    diggerX = diggerX + 40;
  } 
  else {
    diggerX = 0;
  }
  println(diggerX);
  frameTicker++;
}

