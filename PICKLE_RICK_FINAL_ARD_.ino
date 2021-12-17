const int led_pin = 13;    // Initializing the LED pin
const int buzzer_pin = 8;// Initializing the Buzzer pin
const int A = 7;   //Defines all pins on the Arduino Uno board in order of connection.
const int B = 6;
const int C = 4;  
const int D = 3;
const int E = 2;
const int F = 9;
const int G = 10;

byte num0 = 0x3F;  
byte num1 = 0x6;
byte num2 = 0x5B;
byte num3 = 0x4F;
byte num4 = 0x66;
byte num5 = 0x6D;
byte num6 = 0x7C;
byte num7 = 0x7;
byte num8 = 0x7F;
byte num9 = 0x6F;
 
void on(byte num)   // This function turns on the correct pins to display numbers passed to it...through the variable "num"
{
  int result = bitRead(num, 0);  // Read the first binary entry in num and stores it in result.
 
      if (result == 1)  // Check to see if this segment should be on.
 
    {digitalWrite(A, HIGH);}   // Turns on the segment.
    else   // Otherwise, it turns it off.
    {digitalWrite(A, LOW);}  // Turns segment off.
 
      result = bitRead( num, 1);  // Same thing for the 6 remaining segments.
 
      if (result == 1)
 
    {digitalWrite(B, HIGH);}
    else
    {digitalWrite(B, LOW);}     
    result = bitRead( num, 2);
 
      if (result == 1)
 
    {digitalWrite(C, HIGH);}
    else
    {digitalWrite(C, LOW);}    
   result = bitRead( num, 3);
 
      if (result == 1)
 
    {digitalWrite(D, HIGH);}
    else
    {digitalWrite(D, LOW);}    
   result = bitRead( num, 4);
 
      if (result == 1)
    {digitalWrite(E, HIGH);}
    else
    {digitalWrite(E, LOW);}
    
   result = bitRead( num, 5);  
      if (result == 1)
    {digitalWrite(F, HIGH);}
    else
    {digitalWrite(F, LOW);}    
    
   result = bitRead( num, 6);
      if (result == 1)
    {digitalWrite(G, HIGH);}
    else
    {digitalWrite(G, LOW);}
  }

void setup ( ) {

pinMode(led_pin, OUTPUT);// Declaring the LED pin as output pin
pinMode(buzzer_pin, OUTPUT);
  pinMode(A, OUTPUT); // Making all pins outputs
  pinMode(B, OUTPUT);
  pinMode(C, OUTPUT);
  pinMode(D, OUTPUT);
  pinMode(E, OUTPUT);
  pinMode(F, OUTPUT);
  pinMode(G, OUTPUT);
  pinMode(10,OUTPUT);
Serial.begin(9600);       // Starting the serial communication at 9600 baud rate
} 

void loop ( ) { 
if (Serial.available ( ) > 0) {   // Checking if the Processing IDE has send a value or not
char state = Serial.read ( );    // Reading the data received and saving in the state variable

if(state == '1'){             // If received data is '1', then turn on LED 
tone(buzzer_pin, 100);
digitalWrite (led_pin, HIGH);


{
on(num0);   // Passing "num0" to the function  "on()" defined above to display "0"
 delay(1000);   // Delay for 1 second to see the "0"
  on(num1);  // Change to "1"
  delay(1000); 
  on(num2);  
  delay(1000);
  on(num3);  
  delay(1000);
  on(num4);  
  delay(1000);
  on(num5);  
  delay(1000);
  on(num6);  
  delay(1000);
  on(num7);
  delay(1000);
  on(num8);  
  delay(1000);  
  on(num9);  
  delay(1000);}
}
 
if (state == '0') {     // If received data is '0', then turn off led
noTone(buzzer_pin);
digitalWrite (led_pin, LOW);

} 
}}

 
