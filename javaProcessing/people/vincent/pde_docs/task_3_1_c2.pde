int punkte = 15;
int x = round(random(punkte));

println("Punkte: "+x+"/"+punkte);

if(x>=punkte/3){
  if(x>=punkte-(punkte/3)){
    println("Bestanden mit Auszeichnung");
  }else{
   println("Bestanden!"); 
  }
}else{
  println("Leider durchgefallen :(");
}
println("Auf Widersehen.");
