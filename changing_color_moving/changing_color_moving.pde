int x;
float y;
int v;
void setup(){
size(500,300);
noStroke();
x = 0;
y = x;
v = 255;
background(255);

}

void draw(){
fill(map(mouseX,0,500,0,255),map(mouseY,0,300,0,255),255); 
ellipse(x,y,50,50);
ellipse(300,100,x,y);
x = x+1;
y = x+1;
v = 255-1;
}


