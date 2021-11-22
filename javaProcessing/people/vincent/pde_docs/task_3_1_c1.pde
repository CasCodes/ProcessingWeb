int punkte = 10;
int x = round(random(punkte));

println("Erreichbare Punkte: "+punkte);
println("Erreichte Punkte: "+x);

if(x>=punkte*0.5){
  println("Bestanden!");
}else{
  println("Leider durchgefallen :(");
}
println("Auf Widersehen.");
