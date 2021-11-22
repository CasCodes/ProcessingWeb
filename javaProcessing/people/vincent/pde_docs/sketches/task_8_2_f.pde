void setup(){
  Auto a1 = new Auto();
  Auto a2 = new Auto();
  
  a1.km_stand = 1230;
  a1.avg_verbrauch = 60;
  a1.tankfuellung = 500;
  
  a2.km_stand = 400;
  a2.avg_verbrauch = 40;
  a2.tankfuellung = 200;
  
  a1.status();
  a2.status();
}
