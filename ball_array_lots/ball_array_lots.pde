float []x = new float[500];
float []y = new float[500];
float []sz = new float[500];
float []speedx = new float[500];
float []speedy = new float[500];

void setup() {
  size(displayWidth, displayHeight);
  for (int i = 0; i < x.length; i ++) {
    colorMode(HSB, 360, 100, 100);
    x[i] = i*5;
    y[i] = i*4;
    sz[i] = i*5;
    speedx[i] = random(-5, 5);
    speedy[i] = random(-5, 5);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < x.length; i ++) {
    ellipse(x[i], y[i], sz[i], sz[i]);
x[i] = speedx[i] + x[i];
y[i] = speedy[i] + y[i];
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
}

