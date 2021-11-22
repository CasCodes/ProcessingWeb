class Kiste{
  float x;
  float y;
  int breite;
  int hoehe;
  
  Kiste(float n,float i,int b,int h){
    x = n;
    y = i;
    breite = b;
    hoehe = h;
  }
  
  void zeichne(){
    rect(x,y,breite,hoehe);
  }
}  
