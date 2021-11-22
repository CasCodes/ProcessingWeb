float x = 0;
float a = 40;

void draw(){
  translate(50,50);
  ellipse(cos(radians(x*3.6-90))*a,sin(radians(x*3.6-90))*a,10,10);
  x+=12.5;
  if(x==100){
    a-=20;
  }else if(x==200){
    a-=20;
  }
}
