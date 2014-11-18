float x = 150;
void setup() {
  size(500, 500);
  
}

void draw() {
  background(7, 174, 232);
  rect(x, x, x, x);
  if (mouseX >= 150 && mouseX <= 300 && mouseY <= 300 && mouseY >= 150) {
    fill(255,255,13);
      rect(random(140,160),random(140,160),random(140,160),random(140,160));
  } else {
      
    fill(232,135,7);
  }


}

