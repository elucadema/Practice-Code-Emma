ArrayList<Particle> particles = new ArrayList<Particle>();
//declare variable for images
PImage elsa;
PImage flake;
PImage sven;
PImage olaf;
PImage kristoff;
PImage anna;
//declare and initialize variables
int pic = 0;
int maxsnow = 150;
import ddf.minim.*;
Minim minim;
AudioPlayer player;
void setup() {
  size(1000, 677, P3D);
  noCursor();
  //song
  minim = new Minim(this);
  player = minim.loadFile("Let It Go.mp3");
  frameRate(30);
  //initialize images
  elsa = loadImage("elsa-frozen.jpg");
  flake = loadImage("snowflake.png");
  sven = loadImage("sven.png");
  kristoff = loadImage("Kristoff.png");
  olaf = loadImage("Olaf.png");
  anna = loadImage("anna.png");
  //play song
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
    //call way to remove particles
    if (p.isDead()) {
      particles.remove(i);
    }
  }
  //display sven at mouse when s is pressed
    if (keyPressed) {
    if (key == 's') {
      image(sven, mouseX - 250, mouseY - 236.5, 500, 473);
    }
  }
  //display olaf at mouse when o is pressed
  if (keyPressed) {
    if (key == 'o') {
      image(olaf, mouseX - 75, mouseY - 160, 150, 320);
    }
  }
  //display anna at mouse when a is pressed
  if (keyPressed) {
    if (key == 'a') {
      image(anna, mouseX - 63.5, mouseY - 167.5, 127, 335);
    }
  }
  //display kristoff at mouse when k is pressed
  if (keyPressed) {
    if (key == 'k') {
      image(kristoff, mouseX - 73.5, mouseY - 172.5, 147, 390);
    }
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
    sz = 100;
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
//remove particles once off screen
  boolean isDead() {
    if (loc.x > width || loc.y - sz > height || loc.x + sz < 0) {
      return true;
    } else { 
      return false;
    }
  }
}

