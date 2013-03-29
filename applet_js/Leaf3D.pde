//Declare image file
PImage img; 
//Declare the leaf

Maple[] leaf;
float xpos;
float ypos;

void setup() {
  size(600, 600, P3D);
  smooth();
  img = loadImage("A1.png");
  leaf = new Maple[25];
  for (int i = 0; i < leaf.length; i ++){
  leaf[i] = new Maple();
  }
}

void draw() {
  background(255);

  for (int i = 0; i < leaf.length; i++) {
    leaf[i].move();
    leaf[i].display();
  }
}

void mousePressed(){
  for (int i = 0; i <leaf.length; i ++) {
    leaf[i].changeSpeed(1,2);
  }
}
class Maple {
  // just a single leaf
  float xpos;
  float ypos;

  float a = random(2);
  float yspeed;

  Maple() {
    xpos = random(width);
    ypos = random(height);
  }

  void changeSpeed(float min, float max) {
    yspeed = random(min, max);
  }

  void display() {
    //begin rotation code

    a += 0.005;
    if (a > TWO_PI) { 
      a = 0.0;
    }
    
    pushMatrix();
    translate(xpos,ypos);
    rotateX(a * 3);
    rotateY(a * 4);
    //end rotation code
    image(img, random, random, 100, 100);
    popMatrix();
  }

  void move() {
    ypos = ypos + yspeed;
    if (ypos > width) {
      ypos = 0;
    }
  }
}


