//float x = 0;
float barWidth = 20;
void setup() {
  size(500, 500);
  frameRate(120);
  background (255);
}
void draw() {
  for (int x = 0; x < width; x += barWidth) {
    if (mouseX > x && mouseX < x + barWidth) {
      fill(random(255), random(255), random(255));
    } else {
      fill(200);
    }
    rect(x, 0, barWidth, height);
  }
}


