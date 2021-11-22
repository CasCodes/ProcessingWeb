boolean[] infiziert = new boolean[10];
boolean isTrue = false;

for(int i = 0; i < infiziert.length; i++){
  int perc = round(random(100));
  if(perc <= 5){
   infiziert[i] = true;
   isTrue = true;
  }else{
    infiziert[i] = false;
  }
}

if(isTrue){
  println("mindestens eine/r infiziert");
}else{
  println("keiner infiziert");
}

println("Personenliste:");
println(infiziert);
