boolean[] infiziert = new boolean[10];
int proc = 95;
int isTrue = 0;

for(int i = 0; i < infiziert.length;i++){
  int geg = round(random(100));
    if(geg <= proc){
      infiziert[i] = true;
      isTrue += 1;
    }else{
      infiziert[i] = false;
      isTrue += 0;
    }
}

if(isTrue>=1 && isTrue<infiziert.length){
  println("mindestenss eine/r infiziert");
}
  if(isTrue==infiziert.length){
    println("alle infiziert");
  }
  if(isTrue==0){
    println("keiner infiziert");  
  }
println("Personenliste:");
println(infiziert);
