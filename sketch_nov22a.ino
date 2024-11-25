#include <Servo.h>
const int trigpin = 12;
const int echopin = 11;

long duration;
int distance;
Servo s1;

void setup() {
  Serial.begin(9600);
  pinMode(trigpin, OUTPUT);
  pinMode(echopin, INPUT);
  s1.attach(9);
}

void loop() {
  for (int i = 15; i <= 165; i++) {
    s1.write(i);
    delay(30);
    distance = calDist();
    Serial.print(i);
    Serial.print(",");
    Serial.print(distance);
    Serial.println(".");
  }
}

int calDist() {
  digitalWrite(trigpin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigpin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigpin, LOW);
  
  duration = pulseIn(echopin, HIGH);
  distance = duration * 0.034 / 2;
  return distance;
}
