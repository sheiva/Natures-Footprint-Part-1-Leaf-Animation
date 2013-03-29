//Declare image file
PImage img; 
//Declare the leaf

Maple[] leaf;
float xpos;
float ypos;

void setup() {
  size(600, 600, P3D);
  smooth();
  img = loadImage("Leaf.png");
  leaf = new Maple[25];
  for (int i = 0; i < leaf.length; i ++){
  leaf[i] = new Maple();
  }
}

void draw() {
  background(0);
  fill(255);
  //rectMode(CENTER);
  //rect (300,300,100,100);
  for (int i = 0; i < leaf.length; i++) {
    leaf[i].move();
    leaf[i].display();
  }
}

void mousePressed(){
  for (int i = 0; i <leaf.length; i ++) {
    leaf[i].changeSpeed(3,4);
  }
}


