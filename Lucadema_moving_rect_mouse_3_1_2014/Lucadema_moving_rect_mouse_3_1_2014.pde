float x = 100;
float y = 100;
void setup() {
  size(500, 500);
}

void draw() {
  background(0);
  rect(x, y, 100, 100);
  fill(205, 111, 240);
  if (mouseX >= x && mouseX <= x+100 && mouseY > y && mouseY < 100+y) {
    
    x = random(0, 400);
    y = random(0, 400);

  }
}

