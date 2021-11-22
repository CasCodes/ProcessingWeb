int x = 0;

void draw(){
  int c = 255;
  int a = 0;
  background(0);  
//Linien zum Markieren der Zone
  stroke(255);
  line(25,0,25,height);
  line(75,0,75,height);
//hier wird animiert...
  if(x>25 && x<75){
    a = 255;
  }
  fill(c,a,a);
  ellipse(x,50,20,20);
  x++;
  if(x>width){
    x = 0;
  }
}
