//Pickle Rick Final
//Click on Target to Gain Points
//The More Times You Hit Target, The More Points
////////
//Enjoy



import processing.serial.*; //imports Serial library from Processing

Serial port; // creates object from Serial class
float nozeX=549;
float nozeY=230;
float uniY=117;
float eyezX=547;
float eyezY=310;
/////
int x = 0;
int y = 0; // y location of Target
int speed = 7; // speed of Target
int state = 0;
int startTime = 0;
int[] xpos = new int[45];
int[] ypos = new int[45];
int gameState = 0;
int score = 0;
float counter;
float ppc;
/////

void setup(){ //same as arduino program
size(1080,720); //canvas size
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[1]; //change the number in the [] for the port you need
  port = new Serial(this, portName, 9600);
  port.bufferUntil ( '\n' );   // Receiving the data from the Arduino IDE
}

void draw(){ 
//Draw Background
if (mouseX < width/3) {
background(146, 49, 191);
}
else if (mouseX < 2*width/3) {
background(20, 67, 161);
} 
else {
background(249, 85, 9);
}
for (int i = 0; i < 15; i++) {
stroke(5);
fill(21, 175, 84);
ellipse(width/2,height/2, i*100,i*35);
i++;
} 

 //Create Target
x = x + speed;
if ((x > width) || (x < 0)) {
speed = speed * -1;
}
///
if (mousePressed == true) {
    fill(0);
    port.write ( '1' ) ;
  } else {
    fill(255,0,35);
    port.write ( '0' ) ;
  }
   ellipse(x, 550, 105, 105);
   stroke(3);
if (millis() - startTime  > 600) {
fill(250,239,4);
ellipse(x, 550, 50, 50);
}
// Shift array values
for (int i = 0; i < xpos.length - 1; i++) {
xpos[i] = xpos[i + 1];
ypos[i] = ypos[i + 1];
}
// New location
xpos[xpos.length - 1] = mouseX;
ypos[ypos.length - 1] = mouseY;

//Draw Circle Mouse Guide
for (int i = 0; i < xpos.length; i++) {
noStroke();
fill(5, 237, 244);
ellipse(xpos[i], ypos[i], i, i);
}

//////
//GameState
if (gameState == 0) {
    fill(255,0,50);
    textSize(70);
    textAlign(100);
    text("Click Mouse on Target", 150, 200);
    fill(255,255,255);
    textSize(60);
    textAlign(100);
    text("To Recieve Score (PPC)", 200, 300);
    fill(0);
    textSize(30);
    text("The More You Click = The More Points", 250, 370);
    if (mousePressed) {
      gameState = 1;
      counter = 0;
      score = 0;
}
}
//////
if (gameState == 1) {
  //Draw Body + BodyParts
    strokeWeight(3);
  fill(21, 154, 11);
  rect(400,45,315,665,900);
  //lighter part of body
  strokeWeight(0);
  fill(82, 203, 72);
  rect(452,65,220,600,900);
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
  //////
//Draw Random Lazerz
stroke(random(460), 1, 1);
strokeWeight(4);
if(mousePressed==true & mouseButton==LEFT){
line(random(width), random(height), random(width), random(height));
}
  ///////
  //Create Game Features & Texts
    
    textAlign(CENTER, CENTER);
    fill(255,0,50);
    textSize(200);
    text(score, 150, 200);
    textSize(50);
    fill(255,150,255);
    text(counter, 5000, 1);
    textSize(25);
    text("Approx 10 Seconds To Complete", 220, 65);
    counter=counter+0.0183;
    
    /////
    //Rick Facial Expressions
    if (mouseY>0&mouseY<height&mouseX>0&mouseX<width) {
    //mouseX reactions
    nozeX=550+(mouseX-550)/50;
    eyezX=550+(mouseX-550)/20;
    //mouseY reactions
    uniY=140+(mouseY-125)/40;
    nozeY=220+(mouseY-200)/50;
    eyezY=300+(mouseY)/25;}
    if (counter > 10) {
      gameState = 2;
    }
  }
  if (gameState == 2) {
    textAlign(CENTER, CENTER);
    fill(240);
    textSize(200);
    text(score, 150, 200);
    textSize(25);
    fill(255,255,255);
    text("Points Per Click (PPC):", 150, 355);
    textSize(25);
    text("Restart = Press Any Key", 150, 25);
    ////
    ppc = score/1;
    text(ppc, 150, 385);
    textSize(45);
    textAlign(CENTER);
    fill(0,0,0);
    text("Wubba lubba dub dub!", 300, 90);
/////
    if (keyPressed) {
      gameState = 0;
      counter = 0;
      score = 0;
    }
  }
}

void mouseReleased() {
  if (keyPressed) {
      gameState = 0;
    }
  if (gameState == 1) {
    score++;
  }
}
