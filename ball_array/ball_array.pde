int x[] = {
  350, 800, 750, 400, 60
};
int y[] = {
  400, 750, 50, 200, 250
};
int sz[] = {
  10, 70, 80, 50, 40
};
int speedx[] = {
  1, 5, 7, 10, 11
};
int speedy[] = {
  1, 3, 4, 2, 5
};
int i = 0;

void setup() {
  size(800, 800);
  colorMode(HSB, 360, 100, 100);
}

void draw() {
  background(0);
  for (int i = 0; i < x.length; i += 1) {
    ellipse(x[i], y[i], sz[i], sz[i]);
    x[i] += speedx[i];
    y[i] += speedy[i];
    if (x[i] + sz[i]/2 > width) {
      speedx[i] = -abs(speedx[i]);
    }
    if (x[i] - sz[i]/2 < 0) {
      speedx[i] = abs(speedx[i]);
    }
    if (y[i] - sz[i]/2 < 0) {
      speedy[i] = abs(speedy[i]);
    }
    if (y[i] +sz[i]/2 > height) {
      speedy[i] = -abs(speedy[i]);
    }
  }
  fill(random(360), 44, 96);
}

