int count = 100;
PVector[] vel = new PVector[count];
PVector[] acc = new PVector[count];
PVector [] loc = new PVector[count];
float [] sz = new float[count];

void setup() {
  size(800, 600);

  colorMode(HSB, 360, 100, 100);
  for (int i = 0; i < count; i++) {
    sz[i] = random(2, 5);
    loc[i] = new PVector(random(width), random(-height, - sz[i]/2));
    vel[i] = PVector.random2D();
    acc[i] = new PVector(0, 0);

  }
}

void draw() {  
  background(0);
  for (int i = 0; i < count; i++) {
    vel[i].add(acc[i]);
    loc[i].add(vel[i]); 


    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);
fill(255,100);
  }
}

