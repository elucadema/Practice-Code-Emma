float x = 100;
float y = 100;
float h = 100;



void setup() {
  size(500, 500);
  colorMode(HSB,random(360), 100, 100, random(255));
}


void draw() {
  rect(x, y, h, h);
  if (mouseX > x && mouseX < x + h && mouseY > y && mouseY < y + h) {
    x = random(0, 500);
    y = random(0, 500);
    fill(random(255),random(255),random(255),random(255));
  }
}

