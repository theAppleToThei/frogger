//Beta Testing

PImage frogger1; 
PImage frogger2;
PImage digger;
PImage logo;
PImage ending;
PImage raceCar;
PImage deadFrog;

Boolean gameFinish1 = false;
Boolean gameFinish2 = false;
Boolean gameFinish3 = false;
Boolean gameFinish4 = false;
Boolean gameFinish5 = false;

Boolean gameOver = false;

PFont defaultFont;

int milliseconds = 0;

int lives = 3;

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
  raceCar = loadImage("raceCar.png");
  deadFrog = loadImage("deadFrog.png");
  frameRate(9);
}

void draw() {
  frameRate(9);
  background(0);
  image(logo, 145, 40);
  //resize(40, 37);
  image(digger, diggerX, diggerY);
  image(raceCar, diggerX + 40, diggerYRow2);
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

  if (x == 11 && y == 14) {
    image(frogger2, 405, 120);
    x1 = 300;
    y1 = 640;
    y = 1;
    x = 8;
    SCORE += 1000;
    gameFinish4 = true;
  }

  if (x == 2 && y == 14) {
    y1 = 160;
    y = 13;
    x = 2;
    SCORE -= 10;
  }

  if (x == 6 && y == 14) {
    y1 = 160;
    y = 13;
    x = 6;
    SCORE -= 10;
  }

  if (x == 5 && y == 14) {
    y1 = 160;
    y = 13;
    x = 5;
    SCORE -= 10;
  }

  if (x == 9 && y == 14) {
    y1 = 160;
    y = 13;
    x = 9;
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
    textSize(32);
    fill(255, 255, 255);
    text("You've won!\nEnter name:", 200, 350);
    if (keyPressed) {
      if (keyCode == 65) 
      {
        text("A", 200, 100);
      }
      if (keyCode == 76) 
      {
        text("L", 200, 100);
      }
      if (keyCode == 88) 
      {
        text("X", 200, 100);
      }
    }
  }

  if (x1 - 10 <= diggerX && x1 + 20 >= diggerX && y1 == 600) {
    // TODO: Add digger coordinates 
    textSize(32);
    background(0);
    image(deadFrog, x1, y1);
    // textFont(defaultFont);
    fill(255, 255, 255);
    //text("You've lost!", 200, 350);
    lives--;
    //     gameOver = true;
    while (lives < 1 && keyCode != 32) {
      text("Play again?\nPress Spacebar!", 200, 350);
    }
    frameRate(2);
    int x1 = 300;
    int y1 = 640;

    int x = 8;
    int y = 1;
  }

  // TODO: Add digger coordinates 
  if (x == diggerGridX && y == diggerGridY) {
    textSize(32);
    //textFont(defaultFont);
    fill(255, 255, 255);
    //text("You've lost!", 200, 350);
    lives--;
    
    image(deadFrog, x1, y1);
    //     gameOver = true;
    while (lives < 1 && keyCode != 32) {
      text("Play again?\nPress Spacebar!", 200, 350);
      if (keyPressed) {
        if (keyCode == 32) {
          return;
        }
      }
    }
    int x1 = 300;
    int y1 = 640;

    int x = 8;
    int y = 1;
  }
  //textFont(defaultFont);
  fill(255, 255, 255);
  textSize(12);
  text("SCORE: " + SCORE, 10, 690);
  image(frogger2, 520, 665);
  text(" x " + lives, 550, 690);



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

