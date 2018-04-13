float x=1;

float redb;
float greenb;
float blueb;
int m;

float reds;
float greens;
float blues;
int k;

void setup(){
  size(500,500);
  background(1);
  frameRate(30);
}


void draw(){
  x=(x+10)%499;
  
  if(x>=490){
  background(redb,greenb,blueb);
  rotate(radians(30+x));
    if(m>1){
    background(redb,greenb,blueb);
    }
  }
  
  if(keyPressed){
    stroke(reds,greens,blues);
  }else{
    stroke(255);
  }
  
  translate(width/2, height/2);
  rotate(radians(40+x));
  //stroke(255);
  noFill();
  arc(0,0, 0+x, 0+x, 0, HALF_PI);
  arc(0,0, 15+x, 15+x, HALF_PI, PI);
  arc(0,0, 30+x, 30+x, PI, PI+QUARTER_PI);
  arc(0,0, 45+x, 45+x, PI+QUARTER_PI, TWO_PI); 
  
}
  

void mouseDragged(){
  m=(m+1)%2;
  redb = (redb + 1) % 50;
  blueb = (blueb + 3) % 150;
  background(redb, greenb, blueb);
}

void keyPressed(){
  k=(k+1)%2;
  reds = (reds + 25) % 150;
  blues = (blues + 45) % 150;

}