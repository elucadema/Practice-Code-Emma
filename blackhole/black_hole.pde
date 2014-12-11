class BlackHole {
  PVector loc;
  int sz;
  BlackHole() {
    sz = 20;
    loc = new PVector(random(width), random(height));
  }

  void display() {
    fill(255);
    ellipse(loc.x, loc.y, sz, sz);
  }


  boolean consume(GravityBall b) {
    if (loc.dist(b.loc) < sz/2 + b.sz/2) {
      print ("Consume");
      return true;
    } else {
      return false;
    }
  }
}

