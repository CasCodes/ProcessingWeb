float of = 0.1;
void draw(){
  background(255);
  for(int y = 0; y <= height;y+=10){
   line(0,y+of,100,y+of);
   of++;
   if(of>=10){
     of = 0.1;
   }
  }
}
