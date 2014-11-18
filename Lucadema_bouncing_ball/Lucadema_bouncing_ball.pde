int x;
int y;
int yspeed;
int xspeed;
void setup(){
 size(500,500);
 
  x = 0;
  y = height/2;
  xspeed = 5;
  yspeed = 10;
}

void draw(){
  background(0);
  ellipse(x, y, 20, 20);
  x += xspeed;
  y += yspeed;
  if(x >= height){
    xspeed = -5;
  }
  if(x <= 0){
    xspeed = 5;
  }
  if(y <= 0){
    yspeed = 10;
  }
  if(y >= height){
    yspeed = -10;
  }
}
