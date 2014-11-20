float sz;
PVector loc;
PVector mouse;
PVector vel;


void setup() {
  size(800, 600);
  sz = 50;
  mouse = new PVector();
  loc = new PVector(width/2, height/2);
  vel = new PVector(1, 1);
}

void draw() {  
  background(0);
  mouse.set(mouseX, mouseY);
  loc.add(vel);

  if (loc.dist(mouse) < sz/2) {
  }
  ellipse(loc.x, loc.y, sz, sz);
  
  if (loc.x + sz/2 > width ||loc.x - sz/2 < 0 ) {
    vel.x *= -1;
  }

  if (loc.y + sz/2 > height ||loc.y - sz/2 < width ) {
    vel.y *= -1;
  }
} 

