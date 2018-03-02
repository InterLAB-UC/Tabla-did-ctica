int numFrames = 3;
PImage[] cone = new PImage[numFrames];

void setup(){
  size(800,800);
  frameRate(6);
  
  for(int i=0; i < cone.length; i++){
    String imageName = "cone"+nf(i,3)+".png";
    cone[i] = loadImage(imageName);
  }
}

void draw() {
  int frame = frameCount % numFrames;
  background(0);
  imageMode(CENTER);
  image(cone[frame],height/2,width/2);
}