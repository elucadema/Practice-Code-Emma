GravityBall a;
void setup() {
  size(800, 600);
  a = new GravityBall();
}
void draw() {
  background(0);
  a.move();
  a.bounce();
  a.display();
}
class GravityBall {
  float sz;
  PVector loc, vel,acc;
  GravityBall() {
    sz = 10; 
    loc = new PVector(width/2, height/2);
    vel = PVector.random2D();
    acc = new PVector(0,.1);
  }
  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }
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

