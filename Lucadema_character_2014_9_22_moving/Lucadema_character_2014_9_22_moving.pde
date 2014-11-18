int headx;
int heady;

void setup(){
  size(500,500);
  headx = 235;  //original value 235
  heady = 50;   //original value 50
}
void draw(){
  headx = mouseX;
  heady = mouseY;
  background(107,171,234);

//pond
fill(11,32,160);
ellipse(349,400,300,200);

//legs
stroke(56,113,26);
strokeWeight(10);
line(headx - 65, heady + 10, headx - 65, heady + 20);
line(headx - 25, heady + 10, headx - 25, heady + 20);

//body
stroke(0);
strokeWeight(1);
fill(56,113,26);
arc(headx - 45, heady + 10, 70, 70, PI, TWO_PI, CHORD);
 //spots
    fill(random(143),random(134),random(203));
    rect(headx - 55, heady - 21,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 45, heady - 21,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 35, heady - 21,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 60, heady - 15,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 50, heady - 15,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 40, heady - 15,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 30, heady - 15,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 65, heady - 9,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 55, heady - 9,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 45, heady - 9,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 35, heady - 9,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 25, heady - 9,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 70, heady - 3,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 60, heady - 3,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 50, heady - 3,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 40, heady - 3,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 30, heady - 3,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 20, heady - 3,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 65, heady + 3,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 55, heady + 3,6,4);   
     fill(random(143),random(134),random(203));
    rect(headx - 45, heady + 3,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 35, heady + 3,6,4);
     fill(random(143),random(134),random(203));
    rect(headx - 25, heady + 3,6,4);
     fill(random(143),random(134),random(203));
    //tail
    fill(56,113,26);
    triangle(headx - 80, heady + 10, headx - 87, heady + 10, headx - 80, heady + 6);
//head
fill(56,113,26);
ellipse(headx,heady,25,25);
   //eye
    fill(0);
    ellipse(headx + 5, heady - 5,4,4);

}





