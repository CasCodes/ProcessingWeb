int y = 1;
int a;
int b;

for(int i=1; i<=4;i++){
  y++;
  if(i%2==0){
    a = 0;
    b = 255;
  }
  else{
    a = 255;
    b = 0;
  }
  for(int i2=1;i2<=4;i2++){
    if(i2%2==0){
      fill(a);
    }else{
      fill(b);
    }
    rect(i2*20-10,y*20-30,20,20);
  }
}
