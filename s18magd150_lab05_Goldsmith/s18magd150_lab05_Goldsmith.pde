//code from https://processing.org/examples/button.html is used throughout
//for the basic functionality of buttons, with some small alterations. Before
//each function where this code is used, I've placed another copy of the
//link above.

int rectX, rectY; 
int circleX, circleY;  
int rectSize = 40;     
int circleSize = 40;   
boolean toggle = false;
boolean rectOver = false;
boolean circleOver = false;
int x = 1;
void setup(){
  size(600,500);
  background(2,3,36);
  
  //television
  stroke(1);
  fill(50);
  rect(100,100, 400,300);
  fill(1);
  rect(150,150, 300,200);
  
  //buttons
  circleX = 125;
  circleY = 225;
  rectX = 105;
  rectY = 270;
  
}

void draw(){
  
  update(mouseX,mouseY);
  
  //circle button
  fill(150);
  ellipse(circleX, circleY, circleSize, circleSize);
  fill(1);
  textSize(12);
  text("ON", 117,230);
  
  //square button
  fill(150);
  rect(rectX, rectY, rectSize, rectSize);
  fill(1);
  text("OFF", 115,295);
  
  //display
  if (toggle){
    on();
  }else{
    off();
  }
 
}
//https://processing.org/examples/button.html
void update(int x, int y) {
  if ( overCircle(circleX, circleY, circleSize) ) {
    circleOver = true;
    rectOver = false;
  } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {
    rectOver = true;
    circleOver = false;
  } else {
    circleOver = rectOver = false;
  }
}

void mousePressed() {
  if (circleOver) {
   toggle=true;
  }
  if (rectOver) {
   toggle=false;
  }
}


//https://processing.org/examples/button.html
boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

//https://processing.org/examples/button.html
boolean overCircle(int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

void on(){
  
  fill(65,90,232, 25);
  rect(150,150, 300,200);
  
  x=(x+5)%150;
  
  if(x>=150){
  rotate(radians(30+x));
  }
  
  translate(width/2, height/2);
  rotate(radians(40+x));
  noFill();
  stroke(175,158,255);
  arc(0,0, 0+x, 0+x, 0, HALF_PI);
  stroke(144,152,232);
  arc(0,0, 15+x, 15+x, HALF_PI, PI);
  stroke(144,199,232);
  arc(0,0, 30+x, 30+x, PI, PI+QUARTER_PI);
  stroke(158,244,255);
  arc(0,0, 45+x, 45+x, PI+QUARTER_PI, TWO_PI); 
}

void off(){
  fill(1);
 rect (150,150, 300,200);
}