/*
Add it basic module
melody
by Tom Igoe
Hardware definif
un buzzer est en parraléle sur la led

 */

#define ledtx 0 // led IR
#define led 1 // led 10 mm
#define in 3 // phototransisor

#include "pitches.h"

// notes in the melody:
int melody[] = {
  NOTE_C4, NOTE_G3,NOTE_G3, NOTE_A3, NOTE_G3,0, NOTE_B3, NOTE_C4};

// note durations: 4 = quarter note, 8 = eighth note, etc.:
int noteDurations[] = {
  4, 8, 8, 4,4,4,4,4 };

void setup() {
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
    // iterate over the notes of the melody:
    for (int thisNote = 0; thisNote < 8; thisNote++) {

      // to calculate the note duration, take one second 
      // divided by the note type.
      //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
      int noteDuration = 1000/noteDurations[thisNote];
      tone(led, melody[thisNote],noteDuration);

      // to distinguish the notes, set a minimum time between them.
      // the note's duration + 30% seems to work well:
      int pauseBetweenNotes = noteDuration * 1.30;
      delay(pauseBetweenNotes);
      // stop the tone playing:
      noTone(led);
    }
    digitalWrite(led, HIGH); // on eteind la led 10 mm
    digitalWrite(ledtx, LOW); // on allume la led IR pendent 50 ms
    delay(50);
    digitalWrite(ledtx, HIGH); // on eteind la led IR
    delay(450); // rien ne se passe pendent 0,45 s
  }

}



