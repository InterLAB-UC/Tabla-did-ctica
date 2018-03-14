class Cat {
  PImage cat;
  PImage cat2;
  
  Cat(){
  }
  
  void display(){
    cat=loadImage("blackynais.png");
    imageMode(CENTER);
    image(cat,mouseX,mouseY,714/2,837/2);
  }
  
  void display2(){
    cat2=loadImage("blackycasco.png");
    imageMode(CENTER);
    image(cat2,mouseX,mouseY,714/2,837/2);
  }
  
  
}