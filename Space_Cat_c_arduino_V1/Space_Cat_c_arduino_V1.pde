import processing.serial.*;

import cc.arduino.*;

Arduino arduino;

PImage img;
Cat b;
Cat b2;


void setup() {
  size(1920, 1080);
  img=loadImage("Space.jpg");
  
  b=new Cat ();
  b2= new Cat();
  
    println(Arduino.list());
    arduino = new Arduino(this, Arduino.list()[3],57600);
}

void draw() {
  println(arduino.analogRead(0));
  imageMode(CORNER);
   image(img, 0,0);
 if(arduino.analogRead(0)<=5){
   b2.display2();
 }else{
   b.display();
 }
}
   