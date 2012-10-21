/*
Add it basic module
un beep en final
 Hardware definif
 un buzzer en parraléle sur la led
 */

#define ledtx 0 // led IR
#define led 1 // led 10 mm
#define in 3 // phototransisor
#define note 440 // note jouee
#define duree 500 // 

void setup()
{
  pinMode(ledtx, OUTPUT);
  pinMode(led, OUTPUT);
  digitalWrite(ledtx,HIGH); // les leds sont montés avec l'anode sur le + Vcc,
  digitalWrite(led, HIGH); //il faut donc mettre les pins de l'attiny a High pour les eteindre et à low pour les allumer
}

void loop() {
  int sensorValue = 0;
  sensorValue = analogRead(in); //lecture de la valeur au nouveau du phototrans

  if (sensorValue > 980 ) // si le seuil est depassé
  {
    tone (led,note,duree) ; // on joue la note sur la led
    delay(duree);
    digitalWrite(led, HIGH); // on eteind la led 10 mm
    digitalWrite(ledtx, LOW); // on allume la led IR pendent 50 ms
    delay(50);
    digitalWrite(ledtx, HIGH); // on eteind la led IR
    delay(450); // rien ne se passe pendent 0,45 s
  }
}




