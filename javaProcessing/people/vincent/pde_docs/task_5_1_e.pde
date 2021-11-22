int i = 0;
int num = 1;

while(i<49){
  i++;
  if(num%7 == 0){
    println("Div of 7: " + num);
  }
  if(num%13==0){
    println("Div of 13: " + num);
  }
  num++;
}
