class CHASING {
  
 
int numFrames = 4;
PImage[] chase = new PImage[numFrames];

CHASING (){
  }
  void create(){
 for(int i=0; i<chase.length; i++) {
   String imageName = "C" + nf(i,3) + ".png";
   chase[i] = loadImage (imageName);
 }
 
  }
  
  void run(){
  int frame = frameCount % numFrames;
  imageMode(CENTER);
  image(chase [frame], height/2,width/2,1275/2,1650/2);
  }



}//FIN