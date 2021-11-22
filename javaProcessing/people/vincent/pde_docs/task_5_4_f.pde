int y = 1;

for(int i = 1; i <= 4; i++){
  y++;
  for(int i2 = 1; i2<=4; i2++){
    if(i2==1){
      fill(0);
      rect(i2*20-7.5,y*20-28,15,15);
    }else{
      fill(255);
      ellipseMode(CORNER);
      ellipse(i2*20-7.5,y*20-28,15,15);
    }
  }
}
