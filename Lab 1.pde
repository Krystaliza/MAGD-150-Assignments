void setup(){
  
  size(500,500);
  background(2,3,36);
}

void draw(){
  
  /*horizontal guide
  stroke(255);
  strokeWeight(1);
  line(50,0, 50,10);
  line(100,0, 100,10);
  line(150,0, 150,10);
  line(200,0, 200,10);
  line(250,0, 250,10); 
  line(300,0, 300,10);
  line(350,0, 350,10);
  line(400,0, 400,10);
  line(450,0, 450,10);*/
  
  
  //building #1
  noStroke();
  fill(40);
  rect(0,250, 100,250); 
  
  //building #2
  fill(35);
  rect(325,50, 175,450);
  
  //building #3
  fill(25);
  rect(245,200, 70,325, 10,10,0,0);
  rect(255,150, 50,400, 15,15,0,0);
  stroke(25);
  strokeWeight(2);
  line(280,100, 280,149);
  
  //building #4
  noStroke();
  fill(45);
  rect(100,375, 250,375);
  
  
  //moon
  fill(200);
  ellipse(70,100, 150,150);
  fill(255);
  ellipse(70,100, 100,100);
  
  //stars
  ellipse(150,200, 5,5);
  stroke(255);
  strokeWeight(.15);
  strokeCap(ROUND);
  line(150,200, 200,175);
  
  strokeWeight(1);
  point(100,250);
  point(150,178);
  point(200,218);
  point(250,125);
  point(300,17);
  point(350,25);
  /*point();
  point();*/
  
  
}
