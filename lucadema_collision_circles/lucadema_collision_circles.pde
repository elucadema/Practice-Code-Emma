float sz;
PVector loc;
PVector mouse;

void setup() {
  size(800, 600);
  sz = 50;
  mouse = new PVector();
  loc = new PVector(width/2, height/2);
  background(0);
}

void draw() {
  mouse.set(mouseX,mouseY);
  if (loc.dist(mouse) < sz/2) {
    fill(255, 0, 0);
  } else { 
    fill(0, 200, 55);
  }
ellipse(loc.x, loc.y, sz, sz);
}

