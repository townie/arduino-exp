

int red = 12;
int green = 2;
int lightSensor = A0;

void setup() {
  pinMode(red, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(lightSensor, INPUT);
}

void loop() {
  int lightDensity = analogRead(lightSensor);
  delay(1000);

  if (lightDensity >= 20) {
    digitalWrite(red, HIGH);
    digitalWrite(green, LOW);
  }
  else {
    digitalWrite(green, HIGH);
    digitalWrite(red, LOW);
  }
}

