/*
Ball b1 = new Ball();
Ball b2 = new Ball();
Ball b3 = new Ball();
Link link1 = new Link(b1, b2);
Link link2 = new Link(b2, b3);
  link1.render();
  link2.render();

  b1.render();
  b2.render();
  b3.render();

  b1.update();
  b2.update();
  b3.update();
*/
Ball[] b;
Link[] l;
int c=0;
void setup(){
  size(250,250);
  b = new Ball[15];
  for(int i = 0;i<b.length;i++){
    b[i] = new Ball();
  }
  l = new Link[15];
}
void draw() {
  background(0);
  if(c>13){
    c=0;
  }
  for(int i = 0;i<b.length;i++){
      b[i].render();
      b[i].update();
      if(l[i]!=null){
        l[i].render();
      }
      l[i] = new Link(b[c],b[c+1]); 
    
    for(int i2 = 0;i2<b.length;i2++){
        int rad = 5;
        if((b[i].pos.x+(rad)>b[i2].pos.x-rad && b[i].pos.x+(rad)<b[i2].pos.x+(rad)
    || b[i].pos.x<b[i2].pos.x+(rad) && b[i].pos.x > b[i2].pos.x-rad)
    && (b[i].pos.y+(rad)>b[i2].pos.y-rad && b[i].pos.y+(rad)<b[i2].pos.y+rad
    || b[i].pos.y<b[i2].pos.y+(rad) && b[i].pos.y+(rad)>b[i2].pos.y-rad))
    {
       println(b[i2].getClass());
   }
      }
  }
}

void keyPressed(){
  c++;
}
