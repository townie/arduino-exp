int red = 12;
int green = 2;
int lightSensor = A0;

// the setup routine runs once when you press reset:
void setup() {
  // initialize the digital pin as an output.
  pinMode(red, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(lightSensor, OUTPUT);
}

// the loop routine runs over and over again forever:
void loop() {

  delay(1000);
  int lightDensity = analogRead(lightSensor);


  if (lightDensity >= 500) {
    digitalWrite(green, HIGH);
    digitalWrite(red, LOW);
  }
  else {
    digitalWrite(red, HIGH);
    digitalWrite(green, LOW);
  }
}
