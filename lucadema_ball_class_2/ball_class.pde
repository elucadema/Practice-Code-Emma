class GravityBall {
  float sz, hue, sat, bright, alpha;
  PVector loc, vel; //acc;
  GravityBall() {
    sz = random(10, 100); 
    loc = new PVector(random(sz, width - sz/2), random(sz, height - sz/2));
    vel = PVector.random2D();
    //acc = new PVector(0, .1);
    hue = random(360);
    sat = 57;
    bright = 99;
    alpha = 50;
  }
  GravityBall(float tempsz) {
    sz = tempsz; 
    loc = new PVector(random(sz, width - sz/2), random(sz, height - sz/2));
    vel = PVector.random2D();
    //acc = new PVector(0, .1);    
    hue = random(360);
    sat = 53;
    bright = 93;
    alpha = 50;
  }
  void display() {
    fill(hue, sat, bright, alpha);
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    //vel.add(acc);
    loc.add(vel);
  }
  void bounce() {
    if (loc.x + sz/2 > width || loc.x - sz/2 < 0) {
      vel.x *= -1;
    }
    if (loc.y + sz/2 > height || loc.y - sz/2 < 0) {

      vel.y *= -1;
    }
  }
  void collideWith(GravityBall other) {
    if (loc.dist(other.loc) < sz/2 + other.sz/2) {
      vel = PVector.sub(loc, other.loc);
      vel.normalize();
    }
  }
}

