//variables for ball
float x, y = 0;
float sz = 20;
float speedx = 5;
float speedy = 5;
//variables for paddle
float paddleRw = 30;
float paddleRh = 100;
float paddleRy = mouseY;
float paddleRx = 500;
float paddleLw = 30;
float paddleLh = 100;
float paddleLy = 400;
float paddleLx = 100;
//variables for score
int scorePL = 0;
int scorePR = 0;
int running = 1;


void setup() {
  size(600, 800);
  colorMode(HSB, 360, 100, 100, 100);
}


void draw() {

  background(223, 65, 97, 75);
  textSize(60);
  text(scorePL, width/3, height/5);
  text(scorePR, 2*width/3, height/5);

  if (running == 1) {
    //moving ball
    ellipse(x, y, sz, sz); 
    fill(0, 0, 0);
    x += speedx;
    y += speedy;
    //when ball is off the screen
    if (y >= height) {
      speedy = -abs(speedy);
    }
    if (x >= width) {
      scorePL += 1;
      x = width/2;
      y = height/2;
    }
    if (y <= 0) {
      speedy = abs(speedy);
    }
    if (x <= 0) {
      scorePR += 1;
      x = width/2;
      y = height/2;
    }
    //paddleR
    rect(paddleRx, paddleRy, paddleRw, paddleRh);  
    fill(0, 99, 99);
    //paddleR moves
    paddleRy = mouseY - paddleRh/2;
    //paddleR hits ball
    if (x + sz/2 > paddleRx && y > paddleRy && y < paddleRy + paddleRh && x + sz/2 < paddleRx + paddleRw) {
      speedx *= -1;
    }

    //paddleL
    rect(paddleLx, paddleLy, paddleLw, paddleLh);
    fill(255);
    //paddleL moves up
    if (keyPressed) {
      if (key == 'w') {
        paddleLy -= 10;
      }
    }
    //paddleL moves down
    if (keyPressed) {
      if (key == 's') {
        paddleLy += 10;
      }
    }
    //paddleL hits ball
    if (x - sz/2 < paddleLx + paddleLw && y > paddleLy && y < paddleLy + paddleLh && x - sz/2 > paddleLx) {
      speedx *= -1;
    }
  }
  //score text

  if (scorePR >= 10 || scorePL >= 10) {
    x = width/2;
    y = height/2;
    running = 0;
  }
  //restart game
  if (running == 0) {
    text("GAME OVER", 140, height/4);
    scorePR = 0;
    scorePL = 0;
    textSize(30);
    text("Restart Press Mouse", 150, 3*height/4);
  }
}
void mousePressed() {
  running = 1;
}

