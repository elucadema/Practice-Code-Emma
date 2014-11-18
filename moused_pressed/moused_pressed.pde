int shape = 1;
void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  noStroke();
  if (shape == 1) {
    text("RECTANGLES!", 200, height/2);
    rect(random(800), random(800), 20, 20);
    fill(random(360), 54, 97, 100);
  } else {
    ellipse(random(800), random(800), 20, 20);
    fill(random(360), 54, 97, 100);
    text("ELLIPSES!", 200, height/2);
  }
}
void mouseClicked() {
  if (shape == 0) {
    shape = 1;
  } else {
    shape = 0;
  }
}

