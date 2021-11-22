void setup(){
  Kiste[] chests = new Kiste[10];
  for(int i = 0;i<chests.length;i++){
    chests[i]= new Kiste(
    random(width),
    random(height),
    round(random(10,41)),
    round(random(10,41)));
  }
  for(int i = 0;i<chests.length;i++){
    chests[i].zeichne();
  }
}
