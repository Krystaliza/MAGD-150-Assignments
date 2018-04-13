//rotation
float r=1;
float d=1;
int red;
int green;
int blue;

void setup(){
  size(420,420);
  background(0);
  frameRate(30);
}

void draw(){
  //circle movement
  println(frameCount);
  ellipseMode(CORNER);
  r=(r+5) % 360;
  d=dist(mouseX, mouseY, pmouseX, pmouseY) % 50;
  
  translate(mouseX, mouseY);
  rotate(radians(r));
  ellipse(0+d,0+d, 50,50);
  ellipse(0-d,0-d, -50,-50);
  
  //circle color
  red = (red + 1) % 256;
  green = (green + 1) % 256;
  blue = (blue + 2) % 256;
  fill(red, green, blue);
}

void mousePressed(){
  fill(red*2, green*2, blue*2);
  ellipse(0+d,0-d, 50,50);
  ellipse(0-d,0+d, -50,-50);
  
}