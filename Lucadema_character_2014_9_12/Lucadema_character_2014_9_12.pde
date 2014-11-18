void setup(){
  size(300,100);
  
}
void draw(){
  frameRate(15);
  background(107,171,234);
//legs
stroke(56,113,26);
strokeWeight(10);
line(170,60,random(155,190),70);
line(210,60,random(190,235),70);

//body
stroke(0);
strokeWeight(1);
fill(56,113,26);
arc(190,60,70,70,PI,TWO_PI,CHORD);
 //spots
    fill(random(143),random(134),random(203));
    rect(180,29,6,4);
     fill(random(143),random(134),random(203));
    rect(190,29,6,4);
     fill(random(143),random(134),random(203));
    rect(200,29,6,4);
     fill(random(143),random(134),random(203));
    rect(175,35,6,4);
     fill(random(143),random(134),random(203));
    rect(185,35,6,4);
     fill(random(143),random(134),random(203));
    rect(195,35,6,4);
     fill(random(143),random(134),random(203));
    rect(205,35,6,4);
     fill(random(143),random(134),random(203));
    rect(170,41,6,4);
     fill(random(143),random(134),random(203));
    rect(180,41,6,4);
     fill(random(143),random(134),random(203));
    rect(190,41,6,4);
     fill(random(143),random(134),random(203));
    rect(200,41,6,4);
     fill(random(143),random(134),random(203));
    rect(210,41,6,4);
     fill(random(143),random(134),random(203));
    rect(165,47,6,4);
     fill(random(143),random(134),random(203));
    rect(175,47,6,4);
     fill(random(143),random(134),random(203));
    rect(185,47,6,4);
     fill(random(143),random(134),random(203));
    rect(195,47,6,4);
     fill(random(143),random(134),random(203));
    rect(205,47,6,4);
     fill(random(143),random(134),random(203));
    rect(215,47,6,4);
     fill(random(143),random(134),random(203));
    rect(160,53,6,4);
     fill(random(143),random(134),random(203));
    rect(170,53,6,4);
     fill(random(143),random(134),random(203));
    rect(180,53,6,4);   
     fill(random(143),random(134),random(203));
    rect(190,53,6,4);
     fill(random(143),random(134),random(203));
    rect(200,53,6,4);
     fill(random(143),random(134),random(203));
    rect(210,53,6,4);
     fill(random(143),random(134),random(203));
    //tail
    fill(56,113,26);
    triangle(155,60,148,60,155,56);
//head
fill(56,113,26);
ellipse(235,50,25,25);
   //eye
    fill(0);
    ellipse(240,45,4,4);
}





