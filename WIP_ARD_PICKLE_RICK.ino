const int led_pin = 13;    // Initializing the LED pin
const int buzzer_pin = 8;// Initializing the Buzzer pin
void setup ( ) {

pinMode(led_pin, OUTPUT);// Declaring the LED pin as output pin
pinMode(buzzer_pin, OUTPUT);
Serial.begin(9600);       // Starting the serial communication at 9600 baud rate
} 

void loop ( ) { 
if (Serial.available ( ) > 0) {   // Checking if the Processing IDE has send a value or not
char state = Serial.read ( );    // Reading the data received and saving in the state variable

if(state == '1'){             // If received data is '1', then turn on LED 
tone(buzzer_pin, 100);
digitalWrite (led_pin, HIGH);
}  

if (state == '0') {     // If received data is '0', then turn off led
noTone(buzzer_pin);
digitalWrite (led_pin, LOW);

} 
}
 
delay(1);
}


///
//int distance = analogRead(0);
//  int buzzer = map(distance, 0, 2013, 100, 2000);
 // tone(8, buzzer); 
///
