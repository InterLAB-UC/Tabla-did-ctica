PImage img;
Cat b;
Cat b2;


void setup() {
  size(1920, 1080);
  img=loadImage("Space.jpg");
  
  b=new Cat (100, 100);
  b2= new Cat(100,100);
}

void draw() {
  imageMode(CORNER);
   image(img, 0,0);
 if(key=='h'){
   b2.display2();
 }else{
   b.display();
 }
}
   