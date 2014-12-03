GravityBall[] a = new GravityBall[10];
void setup() {
  size(800, 600);
  for (int i = 0; i < a.length; i++) {
    a[i] = new GravityBall();
    colorMode(HSB, 360, 100, 100, 100);
    
  }
}
void draw() {
  background(0);
  for (int i = 0; i < a.length; i++) {
    a[i].move();
    a[i].bounce();
    a[i].display();

  }
}
class GravityBall {
  float sz;
  PVector loc, vel, acc;
  GravityBall() {
    sz = random(10, 100); 
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
    acc = new PVector(0, .1);
  }
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  fill(frameCount%random(360), 70, 97 , 100);}

  void move() {
    vel.add(acc);
    loc.add(vel);
  }
  void bounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {
      loc.y = height - sz/2;
      vel.y *= -1;
    }
  }
}

