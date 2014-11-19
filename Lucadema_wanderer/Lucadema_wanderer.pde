PVector loc;
PVector vel;
PVector acc;
float sz = 50;

void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  loc = new PVector(width/2, height/2);
  vel = new PVector(0, 0);
  acc = new PVector(random(-.3, .3), random(-.3, 3));
}

void draw() {
  fill(frameCount%360, 19, 99);
 
  vel.add(acc);
  loc.add(vel);


  ellipse(loc.x, loc.y, sz, sz);
  if (loc.x > width) {
    loc.x = 0;
  }
  if (loc.y > height) {
    loc.y = 0;
  }
  if (loc.x < 0) {
    loc.x = width;
  }
  if (loc.y < 0) {
    loc.y = height;
  }
}

