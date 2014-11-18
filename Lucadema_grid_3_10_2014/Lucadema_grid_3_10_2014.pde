int h = 25;
void setup() {
  size(500, 500);
}

void draw() {
  for (int x = 0; x <= width; x += h) {
    for (int y = 0; y <= height; y += h) {
      if (mouseX <= x+h && mouseX >= x && mouseY >= y && mouseY <= y+h) {
        fill(0, 255, 0);
      } else {
        fill(0, 0, 255);
      }
      rect(x, y, h, h);
    }
  }
}

