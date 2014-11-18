float x = 100;
float y = 100;
float h = 100;
float c = 0;



void setup() {
  size(500, 500);
  colorMode(HSB, random(360), 100, 100, 100);
  noStroke();
}


void draw() {
  ellipse(x, y, h, h);
  fill(c, 100, 100, 10);
  x = random(500);
  y = random(500);
  c += 1;
  if (c > 360) {
    c = 0;
  }
}

