String[] text = {"Hallo","mein","Name","ist","Hase","Tschüs."};
int zustand = 0;

void setup(){
  textAlign(CENTER);
  textSize(20);
}

void draw(){
  background(0);
  if(zustand > text.length-1){
    zustand = 0;
  }
  text(text[zustand],width/2,height/2);
}

void mousePressed(){
  zustand++;
}
