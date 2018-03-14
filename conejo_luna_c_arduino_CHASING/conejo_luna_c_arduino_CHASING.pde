/*import cc.arduino.*;
import processing.serial.*;

Arduino arduino; */

CHASING c;

int numFrames = 3;
PImage[] cone = new PImage[numFrames];


void setup(){
  size(800,800);
  frameRate(6);
  c= new CHASING();
 // arduino = new Arduino(this, Arduino.list()[3], 57600);
  for(int i=0; i < cone.length; i++){
  String imageName = "cone"+nf(i,3)+".png";
    cone[i] = loadImage(imageName);
    }
    
  c.create();
}


void draw() {
  int frame = frameCount % numFrames;
  background(0);
  imageMode(CENTER);
    if (key == 'm'){
    image(cone[frame],height/2,width/2);}
    if (key == 'c'){
    c.run();}
    
    
}

//if(arduino.analogRead(0)<=255){