import processing.video.*;

import java.text.SimpleDateFormat;
import java.util.Date;

Movie movie;
Movie movie2;
Movie movie3;
PImage img;
PFont font;


void setup() {
  size(1280, 800);
  font = loadFont("FrucadeSmall-21.vlw");
  background(0);
  img = loadImage("screen.jpg");
  load1();
  load2();
  load3();



}
/*
void movieEvent(Movie movie) {
 if (movie.time() >= (movie.duration() - 1)){
 println ("reload"+movie.getFilename());
 if(movie.getFilename()=="in.avi"){
 load1 ();
 }else if (movie.getFilename()=="out.avi"){
 load2 ();
 }
 
 }else{
 movie.read();
 }
 
 
 
 }
 */



void draw() {
  //tint(255, 20);
  image(img, 0, 0);
  image(movie, 642, 274, 575, 430);
  image(movie2, 261, 274, 368, 209);
  image(movie3, 261, 494, 368, 209);
  textFont(font, 21);
  
  Date fin = null;
   try {
       fin = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2012-10-21 19:00:00");
   } catch(Exception e) {};

  long secs = (fin.getTime() - System.currentTimeMillis()) / 1000;
  String textLeft = String.format("%02d:%02d:%02d:%02d", secs / 86400, (secs % 86400)/3600, (secs % 3600)/60, secs % 60);
   
   
  
   Date from = null;
   try {
       from = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse("2012-10-20 9:00:00");
   } catch(Exception e) {};

  long secsFrom = (System.currentTimeMillis()-from.getTime()) / 1000;
  String textFrom = String.format("%02d:%02d:%02d:%02d", secsFrom / 86400, (secsFrom % 86400)/3600, (secsFrom % 3600)/60, secsFrom % 60);
   
  fill (0);
  
  text(textFrom, 65, 601);
  text(textLeft, 65, 692);
  
  
}

void load1 () {
  // Load and play the video in a loop
  movie = new Movie(this, "in.avi");
  movie.loop();
}

void load2 () {
  movie2 = new Movie(this, "out.avi");
  movie2.loop();
}

void load3 () {
  movie3 = new Movie(this, "pan.avi");
  movie3.loop();
}
void movieEvent(Movie m) {
  m.read();
}

