//variables for ball
float x, y = 0;
float sz = 20;
float speedx = 3;
float speedy = 7;
//variables for paddle
float paddleRw = 30;
float paddleRh = 100;
float paddleRy = mouseY;
float paddleRx = 500;
float paddleLw = 30;
float paddleLh = 100;
float paddleLy = 400;
float paddleLx = 100;
int score = 0;


void setup() {
  size(600, 800);
  colorMode(HSB, 360, 100, 100, 100);
}


void draw() {
  background(223, 65, 97, 75);
  textSize(60);
  text(score, width/2, height/3);

  //moving ball
  ellipse(x, y, sz, sz); //ellipse initial
  x += speedx;
  y += speedy;
  if (y >= 800) {
    speedy = -abs(speedy);
  }
  if (x >= 600) {
    speedx = -abs(speedx);
  }
  if (y <= 0) {
    speedy = abs(speedy);
  }
  if (x <= 0) {
    speedx = abs(speedx);
  }
  //paddleR moves
  paddleRy = mouseY - paddleRh/2;
  rect(paddleRx, paddleRy, paddleRw, paddleRh);

  //paddleL
  rect(paddleLx, paddleLy, paddleLw, paddleLh);
  //paddleR hits ball
  if (x + sz/2 > paddleRx && y > paddleRy && y < paddleRy + paddleRh ) {
    speedx *= -1;
    fill(176, 91, 93);  
    score += 1;
  }

  //paddleL moves
  if (keyPressed) {
    if (key == 'd') {
      paddleLy -= 10;
    }
  }
  if (keyPressed) {
    if (key == 'c') {
      paddleLy += 10;
    }
  }
  //paddleL hits ball
  if (x - sz/2 < paddleLx && y > paddleLy && y < paddleLy + paddleLh) {
    speedx *= -1;
  }
}

