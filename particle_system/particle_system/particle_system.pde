ArrayList<Particle> particles = new ArrayList<Particle>();
PImage elsa;
PImage flake;
import ddf.minim.*;
Minim minim;
AudioPlayer player;
void setup() {
  size(724,506, P3D);
  minim = new Minim(this);
  player = minim.loadFile("Let It Go.mp3");
  frameRate(30);
  elsa = loadImage("elsa frozen background.jpg");
  flake = loadImage("snowflake.png");
  player.play();
}

void draw() {
  //elsa is background
  background(elsa);
  //add more particles
  particles.add(new Particle(height/2, width/2));
  //run through the array
  for (int i = particles.size ()-1; i >= 0; i--) { 
    Particle p = particles.get(i);  
    //display snowflake 
    p.display();
    //move snowflake
    p.move();
  }
}
//Particle class
class Particle {
  //declare variables
  PVector loc, vel, acc;
  float sz;
  //variables for class
  Particle(float x, float y) {
    loc = new PVector(height/4, width/4);
    vel = new PVector(random(-5, 5), random(-5, -1));
    acc = new PVector(0, .1);
    sz=100;
  }
  //display snowflake
  void display() {
    image(flake, loc.x, loc.y, sz, sz);
  }
  //move snowflake
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

