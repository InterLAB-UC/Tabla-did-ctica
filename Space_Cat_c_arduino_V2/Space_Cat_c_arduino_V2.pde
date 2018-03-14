import processing.serial.*;

import cc.arduino.*;

Arduino arduino;
CHASING c;

int numFrames = 3;
PImage[] cone = new PImage[numFrames];
PImage img;
Cat b;
Cat b2;


void setup() {
  size(1920, 1080);
   c= new CHASING();
  //img=loadImage("Space.jpg");
  
  b=new Cat ();
  b2= new Cat();
  for(int i=0; i < cone.length; i++){
  String imageName = "cone"+nf(i,3)+".png";
    cone[i] = loadImage(imageName);
    }
    
  c.create();
  
    println(Arduino.list());
    arduino = new Arduino(this, Arduino.list()[3],57600);
}

void draw() {
  int frame = frameCount % numFrames;
  background(0);
  imageMode(CENTER);
    if (key == 'm'){
    image(cone[frame],height/2,width/2);}
    if (key == 'c'){
    c.run();}
  println(arduino.analogRead(0));
  imageMode(CORNER);
   //image(img, 0,0);
 if(key== 'r'){
   b2.display2();
 }
 if(key=='u'){
   b.display();
 }
}
   