int x = 0;
int xmove = 10;
int y = 0;
int ymove = 10;
void setup() {
  size(500, 500);
  background(0);
}

void draw() {

  for (int x = 0; x <= width; x += xmove) {
    line(x, 0, x, height);
    stroke(random(255), random(255), random(255));
    strokeWeight(4);
  }
  for (int y = 0; y <= height; y += ymove) {
    line(0, y, width, y); 
    stroke(random(255), random(255), random(255));
    strokeWeight(4);
  }
}

