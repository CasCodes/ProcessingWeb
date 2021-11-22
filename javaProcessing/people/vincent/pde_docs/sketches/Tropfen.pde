class Tropfen{
  int x;
  int y;
  
  void zeichne(){
    ellipse(x,y,10,10);
  }
  
  void bewege(){
    zeichne();
    y++;
    if(y>=height){
      y=0;
    }
  }
}
