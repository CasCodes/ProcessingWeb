void setup(){
  print(max3(5,30,31));
}

float max2(float a,float b){
  if(a>b){
    return a;
  }else{
    return b;
  }
}

float max3(float a,float b, float c){
  if(a>b && a>c){
    return a;
  }else if(b>a && b>c){
    return b;
  }else{
    return c;
  }
}
