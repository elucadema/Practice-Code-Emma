ArrayList<GravityBall> ball = new ArrayList<GravityBall>();
void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100);
  ball.add(new GravityBall(random(10, 50)));
}

void draw() {
  background(0, 0, 100);
  for (int i = 0; i < ball.size (); i++) {
    for (int j = 0; j < ball.size (); j++) {
      if (i != j) {
        GravityBall b = ball.get(i);
        b.display();
        b.move();
        b.bounce();
        b.collideWith(GravityBall other);
      }
    }
  }
}
void mousePressed() {
  ball.add(new GravityBall(random(10, 50)));
  if (ball.size() > 20) {
    ball.remove(0);
  }
}

