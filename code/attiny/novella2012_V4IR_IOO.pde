/*
  Blink
  Turns on an LED on for one second, then off for one second, repeatedly.
 
  This example code is in the public domain.
 */

//#define ledtx 0
#define led 1
#define ledD 4 //celle de droite
#define ledG 0 //celle de gauche
#define in 3



void setup() 
{                
  // initialize the digital pin as an output.
  // Pin 13 has an LED connected on most Arduino boards:
//  pinMode(ledtx, OUTPUT);     
  pinMode(led, OUTPUT);     
  pinMode(ledG, OUTPUT);     
  pinMode(ledD, OUTPUT);     
  pinMode(in, INPUT);     
  digitalWrite(led,HIGH);
  digitalWrite(ledG, HIGH);
  digitalWrite(ledD, HIGH);
}

void loop() {

  int sensorValue = 0;
  sensorValue = analogRead(in);    //lecture de la valeur au nouveau du phototrans
  if (sensorValue > 980 ) // si le seuil est depassé
  {
    digitalWrite(led, LOW);   // On allume la led 10 mm pendent 0,5 s
    delay(500);
    digitalWrite(led, HIGH);   // on eteind la led 10 mm
    digitalWrite(ledD, LOW);   // on allume la led IR pendent 50 ms
    digitalWrite(ledG, LOW);   // on allume la led IR pendent 50 ms
    delay(50);
    digitalWrite(ledD, HIGH);  // on eteind la led IR
    digitalWrite(ledG, HIGH);  // on eteind la led IR
    delay(450); // rien ne se passe pendent 0,45 s
  }


 
}
