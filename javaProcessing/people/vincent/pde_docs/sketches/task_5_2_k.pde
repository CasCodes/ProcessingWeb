float x = 0;
float a = 40;

void draw(){
  translate(50,50);
  ellipse(-cos(radians(x*3.6+90))*a,sin(radians(x*3.6+90))*a,2,2);
  x++;
  if(a<=0){
    stop();
  }else{
    a = a -0.1;
  }
}
