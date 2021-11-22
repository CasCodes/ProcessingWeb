int i = 0;
for(int x = 0; x<100; x = x +10){
  float y = 100 - sq(i);
  ellipse(x,y,5,5);
  
  i++;
}
