Rain r;

void setup(){
  size(500,500);
  background(2,3,36);
  //This is necessary to initialize the class constructor.
  r = new Rain();
}

//Here I run all the funtions defined elsewhere in the program to
//achieve the base design.
void draw(){
  
  //This loop allows the display of many raindrops without the need
  //of repetitious code, and also defines the arguments for drop
  //placement.
  for(int t=1; t <20; t++){
    r.display(random(500), random(500));
    }
  //After the loop is completed, r.fade layers rectangles over what has
  //already been drawn in order to give the effect of heavy rain and 
  //disipation rather than a collection of lines compiling.
  r.fade();
  //This function is placed last to ensure the window outline is
  //alwas visible. This is seen again in the mousePressed function 
  //as well to contain the lightning.
  window();
}

void mousePressed(){
  lightning();
  window();
}

void lightning(){
  background(255);
}

//This function is important because it allows reusability of the code
//within multiple other funtions without needing to repeat all of it.
void window(){
  fill(0);
  noStroke();
  beginShape();
  vertex(0,0);
  vertex(500,0);
  vertex(500,500);
  vertex(0,500);
  beginContour();
  vertex(50,50);
  vertex(50,225);
  vertex(225,225);
  vertex(225,50);
  endContour();
  beginContour();
  vertex(275,50);
  vertex(275,225);
  vertex(450,225);
  vertex(450,50);
  endContour();
  beginContour();
  vertex(50,275);
  vertex(50,450);
  vertex(225,450);
  vertex(225,275);
  endContour();
  beginContour();
  vertex(275,275);
  vertex(275,450);
  vertex(450,450);
  vertex(450,275);
  endContour();
  endShape(CLOSE);
}