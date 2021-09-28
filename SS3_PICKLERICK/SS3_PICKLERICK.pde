//PICKLE RICK (pt3) by ELIJAH NORMAN

//Instructions:
//Move Mouse Around Screen to see the BackGround 
//And Pickle Rick's Reaction Change

//Use Mouse to Click On Target and Activate Lazers
//Or Simply Do All At Once

//Enjoy


float nozeX=549;
float nozeY=230;
float uniY=117;
float eyezX=547;
float eyezY=310;

int x = 0;

int y = 0; // y location of square
int speed = 7; // speed of square
int state = 0;


void setup() {
  //size
  size(1080,720);

}
void draw() {
  
  if (mouseX < width/3) {
background(146, 49, 191);
}
else if (mouseX < 2*width/3) {
background(20, 67, 161);
} 
else {
background(249, 85, 9  );
}
 
for (int i = 0; i < 15; i++) {
stroke(5);
fill(21, 175, 84);
ellipse(width/2,height/2, i*100,i*35);
i++;
} 
   
for (int y = 0; y < height; y += 12) {
stroke(0);
line(0, y, width, y);
}
  
  bodyshapeParts();
  rickbodyParts();
  rickReact(); 
 
 
 //Random Lazers
  stroke(random(460), 1, 1);
  strokeWeight(8);
  
  if(mousePressed==true & mouseButton==LEFT)
  {line(random(width), random(height), random(width), random(height));}
  
  else
    
  if(mousePressed==true & mouseButton==RIGHT)
  {line(random(width), random(height), random(width), random(height));}
}

  void bodyshapeParts() {
  strokeWeight(3);
  fill(21, 154, 11);
  rect(400,45,315,665,900);
  //lighter part of body
  strokeWeight(0);
  fill(82, 203, 72);
  rect(452,65,220,600,900);
  }
  
  void rickbodyParts() {
 
 //rick noze
  fill(10, 180, 72);
  strokeWeight(3);
  rect(nozeX,nozeY,26,75,20);
  
//draws mouth
  fill(0);
  rect(463, 315,199,86,100);
  
//draw PICKLE Tongue
  strokeWeight(2);
  fill(122, 25,20);
  rect(477,370,87,30,200);
  
//draw Teef
  fill(234,225,175);
  strokeWeight(1);
  //draw top teef
  rect(482,316,15,14,20);
  rect(506,314,17,15,20);
  rect(530,314,16,14,20);
  rect(554,314,16,14,20);
  rect(578,314,16,14,20);
  rect(602,314,17,15,20);
  rect(626,316,15,14,20);
  //draw bottom teef
  rect(482,386,15,14,20);
  rect(506,387,17,15,20);
  rect(530,387,16,14,20);
  rect(554,387,16,14,20);
  rect(578,387,16,14,20);
  rect(602,387,17,15,20);
  rect(626,386,15,14,20);

//draws eyez
  fill(255);
  strokeWeight(3);
  ellipse(507, 215,105, 105);
  ellipse(617, 215,105, 105);
//black pupil
  fill(0);
  ellipse(eyezX-40, eyezY-95,12, 12);
  ellipse(eyezX+70, eyezY-95,12, 12);
  
//draw UNiBr0W
  strokeWeight(2);
  fill(183,231,252);
  rect(444,uniY,233,25,300);
 
  }

  void rickReact() {
  
  if (mouseY>0&mouseY<height&mouseX>0&mouseX<width) {
    //mouseX reactions
    nozeX=550+(mouseX-550)/50;
    eyezX=550+(mouseX-550)/20;
    //mouseY reactions
    uniY=140+(mouseY-125)/40;
    nozeY=220+(mouseY-200)/50;
    eyezY=300+(mouseY)/25;
    
  }
  
//Red and Yellow Target That Triggers Lazerz   
x = x + speed;
if ((x > width) || (x < 0)) {
speed = speed * -1;
stroke(0); // Shapes have black lines
noFill(); // Shapes are not filled in
}
//Display the Target

stroke(0);
fill(255,0,35);
ellipse(x, 550, 105, 105);

stroke(3);
fill(250,239,4);
ellipse(x, 550, 50, 50);

}
