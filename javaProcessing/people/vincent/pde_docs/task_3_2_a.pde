int erreichbar = 50;
int punkte = round(random(erreichbar));

println("Punkte: "+punkte+"/"+erreichbar);

if(punkte<=10){
  println("Durchgefallen");
}else if(punkte >= 11 && punkte <= 20){
  println("Naja");
}else if(punkte >= 21 && punkte <= 30){
  println("Mittelgut");
}else if(punkte >= 31 && punkte <= 40){
  println("Gut");
}else{
  println("Super");
}
