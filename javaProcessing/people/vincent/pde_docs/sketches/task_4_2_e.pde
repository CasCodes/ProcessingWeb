String wanze = "Wanze";
int a = 0;

void draw(){
  String mod = wanze.substring(a);
  background(0);
  fill(255);
  textAlign(CENTER);
  text(mod,50,50);
}

void mousePressed(){
  a++;
  if(a >= 6){
    a = 0;
  }
}
