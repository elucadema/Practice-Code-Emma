class BlackHole{
 PVector loc;
 int sz;
  BlackHole(){
    sz = 20;
    loc = new PVector(random(width), random(height));
    vel = PVector.random2D();
    hue = random(360);
    sat = 100;
    bright = 100;
    alpha = 50;
    
  
  void display(){
    fill(hue, sat, bright, alpha);
     ellipse(height/2, width/2, sz, sz);
     
  }
  
  
  void consume(GravityBall 0){
    if(loc.x
    
    
