const int ledPin11 = 11;
const int ledPin10 = 10;
const int SENSOR = A0; //sensor hooked up to analog pin A0
int val = 0;

void setup() {
pinMode(ledPin11, OUTPUT); //initialize the LED pin as an output
pinMode(ledPin10, OUTPUT);
Serial.begin(9600);  // initialize serial communication at 9600 bits per second
}

void loop() {
  val = analogRead(SENSOR); //read sensor and assign to variable called val
  val = val / 4; //divide val by 4 or remap values to get byte-sized 0-255
  delay(250); // Wait 250 milliseconds
  
     if ( val>34){
    analogWrite (ledPin11, HIGH);
    analogWrite (ledPin10, LOW);
    delay(1000);
    analogWrite (ledPin11, LOW);
    analogWrite (ledPin10, HIGH);
    delay(1000);
}
 if ( val>86){
    analogWrite (ledPin11, HIGH);
    analogWrite (ledPin10, LOW);
    delay(800);
    analogWrite (ledPin11, LOW);
    analogWrite (ledPin10, HIGH);
    delay(800);
}
 if ( val>134){
    analogWrite (ledPin11, HIGH);
    analogWrite (ledPin10, LOW);
    delay(600);
    analogWrite (ledPin11, LOW);
    analogWrite (ledPin10, HIGH);
    delay(600);
}
 if ( val>186){
    analogWrite (ledPin11, HIGH);
    analogWrite (ledPin10, LOW);
    delay(400);
    analogWrite (ledPin11, LOW);
    analogWrite (ledPin10, HIGH);
    delay(400);
}
  if ( val>240){
    analogWrite (ledPin11, HIGH);
    analogWrite (ledPin10, LOW);
    delay(200);
    analogWrite (ledPin11, LOW);
    analogWrite (ledPin10, HIGH);
    delay(200);
}
    else
analogWrite (ledPin11, LOW);
analogWrite (ledPin10, LOW);   
/////////Uncomment Serial.print() OR Serial.write() and not both!//////////////
  
  //Serial. println(val); //to send human-readable data to Arduino monitor
  Serial.write(val);  //to send binary data to Processing
}
