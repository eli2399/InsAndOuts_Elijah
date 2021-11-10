//SS6_LIGHTWork

//set pin numbers
const int ledPin13 = 13;       //const won't change
const int ledPin12 = 12;
const int ledPin11 = 11;
const int ledPin10 = 10;
const int ledPin9 = 9;
const int ledPin8 = 8;
const int ledPin7 = 7;
const int ledPin6 = 6;

const int buttonPin = 2;

int buttonState = 0;          //variables for reading the pushbutton status

void setup() {
pinMode(ledPin13, OUTPUT);    //initialize the LED pin as an output
pinMode(ledPin12, OUTPUT);
pinMode(ledPin11, OUTPUT);
pinMode(ledPin10, OUTPUT);
pinMode(ledPin9, OUTPUT);
pinMode(ledPin8, OUTPUT);
pinMode(ledPin7, OUTPUT);
pinMode(ledPin6, OUTPUT);
  pinMode(buttonPin, INPUT);  //initialize the pushbutton pin as an output
}

void loop() {
buttonState = digitalRead(buttonPin); 
if (buttonState == HIGH) {
  //pin13          
digitalWrite(ledPin13, HIGH);         //turn LED on    
delay (500);// delays 1000 millieconds=== 1second
digitalWrite(ledPin13, LOW); // STOP SENDING VOLTAGE TO  PIN
delay (1000);
 //pin12          
digitalWrite(ledPin12, LOW);     
delay (300);
digitalWrite(ledPin12, HIGH);
delay (200);
 //pin11          
digitalWrite(ledPin11, HIGH);     
delay (500);
digitalWrite(ledPin11, LOW);
delay (200);
 //pin10         
digitalWrite(ledPin10, LOW);     
delay (200);
digitalWrite(ledPin10, HIGH);
delay (500); 
//pin9          
digitalWrite(ledPin9, HIGH);     
delay (1000);
digitalWrite(ledPin9, LOW);
delay (300);
 //pin8          
digitalWrite(ledPin8, HIGH);     
delay (200);
digitalWrite(ledPin8, LOW);
delay (500);
 //pin7         
digitalWrite(ledPin7, LOW);     
delay (500);
digitalWrite(ledPin7, HIGH);
delay (400);
 //pin6         
digitalWrite(ledPin6, HIGH);     
delay (200);
digitalWrite(ledPin6, LOW);
delay (500);
  }
  else {

    digitalWrite(ledPin13, LOW);          // turn LED off
    digitalWrite(ledPin12, LOW);
    digitalWrite(ledPin11, LOW);
    digitalWrite(ledPin10, LOW);
    digitalWrite(ledPin9, LOW);
    digitalWrite(ledPin8, LOW);
    digitalWrite(ledPin7, LOW);
    digitalWrite(ledPin6, LOW);
   
  }
}
