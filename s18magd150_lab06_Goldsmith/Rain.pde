class Rain{
  
  void display(float x, float y){
    stroke(255);
    line(x,y, x,y+10);
  }
  
  void fade(){
    noStroke();
    fill(2,3,36, 10);
    rect(50,50, 200,200);
    rect(275,50, 200,200);
    rect(50,275, 200,200);
    rect(275,275, 200,200);
  }
}