int x = 0;
int xmove = 10;

void setup() {
  size(500, 500);
  background(0);
  frameRate(1);
}

void draw() {
  ellipse(x,height/2,20,20);
  while (x < width) {
    fill(random(255), random(255), random(255));
    ellipse(x, height/2, 20, 20);
    x += xmove;
  }
  
}

