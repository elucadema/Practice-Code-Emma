void setup() {
  size(800,600);
}

void draw() {
//  background(255);      //call the background function
  randomCircleBetween(0, mouseX);
}





void randomCircle() {
  fill(random(255),random(255),random(255));
  float sz = random(5, 50);
  ellipse(random(width), random(height), sz, sz);
}

void randomCircleBetween(float minDiam, float maxDiam) {
  fill(random(255),random(255),random(255));
  float sz = random(minDiam, maxDiam);
ellipse(random(width), random(height), sz, sz);
}

void rectangle(float x, float y, float w, float h){
  line(x,y,x+w,y);
  line(x+w,y,x+w,y+h);
  line(x+w,y+h,x,y+h);
  line(x,y+h,x,y);
}




