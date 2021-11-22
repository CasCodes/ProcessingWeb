int rndm1 = round(random(50));
int rndm2 = round(random(50,100));
int rndm3 = round(random(100));

int a = rndm1;
int b = rndm2;
int x = rndm3;

if(a<x){
  if(x<b){
    println("drin");
  }
}else{
  println("draussen!");
}
println("a="+a+" b="+b+" x="+x);
