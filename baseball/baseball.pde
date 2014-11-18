String[] Baseball = {
  "Christian Yelich", "Jose Bautista", "David Wright", "Matt Moore", "Brandon Nimmo", "Travis Snider", "James Shields", "Jake Marisnick", "JP Arencibia"
};
int i = 0;
int y = 50;

void setup() { 
  background(0);
  size(800, 800);
  textSize(40);
}

void draw() {

  for (int i = 0; i < Baseball.length; i++) {
    text(Baseball[i], 20, y+i*40);
    if (i > Baseball.length) {
      i = 0;
    }
  }
}

