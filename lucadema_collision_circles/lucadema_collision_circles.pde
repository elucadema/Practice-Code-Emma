int count = 2;
PVector[] vel = new PVector[count];
PVector[] acc = new PVector[count];
PVector [] loc = new PVector[count];
float [] sz = new float[count];


void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100);
  for (int i = 0; i < count; i++) {
    sz[i] = random(20, 40
      loc[i] = new PVector(width/2, height/2);
    vel[i] = PVector.random2D();
    acc[i] = new PVector(0, 0);
  }

  void draw() {  
    background(0);
    for(int i = 0; i < count; i++){
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);  
   for(int j = 0; j < count; j++){
   if(i!=j){
    ellipse(loc.x, loc.y, sz, sz);

    if (loc.x + sz/2 > width ||loc.x - sz/2 < 0 ) {
      vel.x *= -1;
    }

    if (loc.y + sz/2 > height ||loc.y - sz/2 < 0 ) {
      vel.y *= -1;
    }
   
    ellipse(loc2.x, loc2.y, sz2, sz2);

    if (loc2.x + sz2/2 > width ||loc2.x - sz2/2 < 0 ) {
      vel2.x *= -1;
    }

    if (loc2.y + sz2/2 > height ||loc2.y - sz2/2 < 0 ) {
      vel2.y *= -1;
    }
    if (loc2.dist(loc) < sz/2 +sz2/2) {
      vel.mult(-1);
      vel2.mult(-1);
    }
  } 

