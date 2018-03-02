import cc.arduino.*;
import processing.serial.*;

Arduino arduino;

int numFrames = 3;
PImage[] cone = new PImage[numFrames];


void setup(){
  size(800,800);
  frameRate(6);
  arduino = new Arduino(this, Arduino.list()[3], 57600);
  for(int i=0; i < cone.length; i++){
    String imageName = "cone"+nf(i,3)+".png";
    cone[i] = loadImage(imageName);
  }
}

void draw() {
  int frame = frameCount % numFrames;
  background(0);
  imageMode(CENTER);
  if(arduino.analogRead(0)<=255){
    image(cone[frame],height/2,width/2);}
}