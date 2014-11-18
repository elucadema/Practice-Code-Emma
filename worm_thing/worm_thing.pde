int count = 30;
float[]x = new float[count];
float[]y = new float[count];
int shade = 360;



void setup() {
  noStroke();
  colorMode(HSB, 360, 100, 100, 100);
  size(800, 800);
  for (int i = 0; i < 30; i++) {
    x[i] = random(width);
    y[i] = random(height);
  }
}
void draw() {
  background(0);
  for (int i = 0; i < 30 - 1; i++) {

    ellipse(x[i], y[i], i*2+5, i*2+5); 
    x[i] = x[i + 1]; 
    y[i] = y[i + 1]; 
    x[count-1] = mouseX; 
    y[count-1] = mouseY;
  }

  for (int i = 0; i < 30 - 1; i++) {
    fill(random(360), 30, 91);
    ellipse(x[i], y[i], i*2+5, i*2+5);
  }
}

