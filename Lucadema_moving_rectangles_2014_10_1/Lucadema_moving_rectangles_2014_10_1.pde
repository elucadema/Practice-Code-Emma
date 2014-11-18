int x = 0;
int xrect = 25;
float xdist = 5;
void setup() {
  size(500, 500);
  frameRate(5);
}

void draw() {
  if (mouseX <= width/2) {
    for (int x = 0; x <= width+xrect; x += xdist) {
      rect(x-xrect, 0, x, height);
      fill(random(255), random(255), random(255));
    }
  }
  xdist = xdist * 1.1;

}
