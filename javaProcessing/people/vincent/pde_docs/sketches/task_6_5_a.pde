//DOTSSSSSSSSSS
int num = 0;
ArrayList<PVector> pot = new ArrayList<PVector>(num);
ArrayList<PVector> lynn = new ArrayList<PVector>(num);
int c = 0;

void setup(){
  //background(0);
  size(100,100);
}
void draw(){
  background(0);
  for(int i = 0;i<pot.size();i++){
    strokeWeight(3);
    stroke(255);
    point(pot.get(i).x,pot.get(i).y);
   if(mouseX >= pot.get(i).x-3 && mouseX <= pot.get(i).x+3
       && mouseY >=pot.get(i).y-3 && mouseY<=pot.get(i).y+3){
         if(mousePressed){           
           ellipse(50,50,20,20);
          // pot.remove(pot.get(i).equals(mouseX));
         }
       }
    if(keyPressed){
      if(keyCode == RIGHT){
        pot.get(i).x +=1;
      }
      if(keyCode == LEFT){
        pot.get(i).x -=1;
      }
      if(keyCode == UP){
        pot.get(i).y -=1;
      }
      if(keyCode == DOWN){
        pot.get(i).y +=1;
      }
      /*if(key == '+'){
        pot.get(i).z += 1;
      }
      if(key == '-'){
        pot.get(i).z -= 1;
      }*/
    }
    /*for(int i1=0;i1<pot.size();i1++){
      if(mouseX >= pot.get(i1).x-3 && mouseX <= pot.get(i1).x+3
       && mouseY >=pot.get(i1).y-3 && mouseY<=pot.get(i1).y+3){
         if(mousePressed){
           pot.remove(i1); 
         }
       }
    }*/
  }
  for(int i2 = 0;i2<lynn.size();i2++){
    strokeWeight(0);    
    if(lynn.size()>=2 && i2 > 0){
    line(lynn.get(i2-1).x,lynn.get(i2-1).y,lynn.get(i2).x,lynn.get(i2).y);
    if(keyPressed){
      if(keyCode == RIGHT){
        lynn.get(i2).x +=1;
        if(!(i2>1&&i2<num)){
          lynn.get(i2-1).x+=1;
        }
      }
      if(keyCode == LEFT){
        lynn.get(i2).x -=1;
        if(!(i2>1&&i2<num)){
          lynn.get(i2-1).x-=1;
        }
      }
      if(keyCode == UP){
        lynn.get(i2).y -=1;
        if(!(i2>1&&i2<num)){
          lynn.get(i2-1).y-=1;
        }
      }
      if(keyCode == DOWN){
        lynn.get(i2).y +=1;
        if(!(i2>1&&i2<num)){
          lynn.get(i2-1).y+=1;
        }
      }
    }
    }
  }
}

void mousePressed(){

  pot.add(new PVector(mouseX,mouseY));
  lynn.add(new PVector(mouseX,mouseY));
  num++;
  /*for(int i1=0;i1<pot.size();i1++){
      if(mouseX >= pot.get(i1).x-3 && mouseX <= pot.get(i1).x+3
       && mouseY >=pot.get(i1).y-3 && mouseY<=pot.get(i1).y+3){
         if(mousePressed){
           ellipse(50,50,20,20); 
         }
       }
    }*/
}
void keyPressed(){
  if(keyCode == BACKSPACE){
    if(pot.size()>1){
        num--;
        pot.remove(num);
    }
    if(lynn.size()>1){
      lynn.remove(num);
    }
  }
}
