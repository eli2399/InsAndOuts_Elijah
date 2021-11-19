//SS7 THE PROCESS

import processing.serial.*; //imports Serial library from Processing
Serial myPort;
int val=0;
void setup() {
size(1080, 720);
  printArray(Serial.list()); // this line prints the port list to the console
  String portName = Serial.list()[1]; //change the number in the [] for the port you need
  myPort = new Serial(this, portName, 9600);
}
void draw() {
  
  if ( myPort.available() > 0) { // If data is available,
    val = myPort.read(); // read it and store it in val
  }
  
  //draws an ellipse that grows and shrinks in relation to val
  background(199,237,242);
 //PICKLE Body
  strokeWeight(3);
  fill(21, 154, 11);
  rect(400,val,315,665,900);
  //lighter part of body
  strokeWeight(0);
  fill(82, 203, 72);
  rect(452,val,220,600,900);
 
 println (val); //prints to Processing console
 
  if (val>34){
    //PICKLE Body
    strokeWeight(3);
    fill(35, 221, 101);
    rect(400,val,315,665,900);
    //lighter part of body
  strokeWeight(0);
  fill(123, 244, 166);
  rect(452,val,220,600,900);
  }
  if (val>86){
    //PICKLE Body
    strokeWeight(3);
    fill(20, 243, 181);
    rect(400,val,315,665,900);
    //lighter part of body
  strokeWeight(0);
  fill(161, 246, 223);
  rect(452,val,220,600,900);
}
 if (val>134){
    //PICKLE Body
    strokeWeight(3);
    fill(31, 241, 241);
    rect(400,val,315,665,900);
    //lighter part of body
  strokeWeight(0);
  fill(183, 239, 239);
  rect(452,val,220,600,900);
 }
 if (val>186){
    //PICKLE Body
    strokeWeight(3);
    fill(29, 195, 245);
    rect(400,val,315,665,900);
    //lighter part of body
  strokeWeight(0);
  fill(150, 214, 233);
  rect(452,val,220,600,900);
 }
 if (val>240){
    //PICKLE Body
    strokeWeight(3);
    fill(21, 122, 239);
    rect(400,val,315,665,900);
    //lighter part of body
  strokeWeight(0);
  fill(88, 162, 246);
  rect(452,val,220,600,900);
 }
 }
