float sz = 50;
float locX = width/2;
float locY = height/2;
float velX = 0;
float velY = 0;
float accY = random(-.1, .1);
float accX = random(-.1, .1);
void setup() {
  size(800, 600);
  colorMode(HSB, 360, 100, 100);
  noStroke();
  
}

void draw() {
  fill(frameCount%360, 19, 99);
  accY = random(-.1, .1);
  accX = random(-.1, .1);

  velX += accX;
  velY += accY;
  locX += velX;
  locY += velY;

  ellipse(locX, locY, sz, sz);
if(locX > width){
  locX = 0;
  }
if(locY > height){
  locY = 0;}
  if(locX < 0){
    locX = width;
  }
  if(locY < 0){
    locY = height;
  }
}


