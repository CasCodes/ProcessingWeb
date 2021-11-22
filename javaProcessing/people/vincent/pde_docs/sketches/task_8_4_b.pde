void setup() {
  Kunde barack = new Kunde("Barack Obama", "Amerika");
  Kunde angie = new Kunde("Angela Merkel", "Deutschland");

  Auto bmw = new Auto("BMW", "rot", angie);
  Auto porsche = new Auto("Porsche", "schwarz", barack);
  Auto rover = new Auto("Land Rover", "schwarz", barack);
  
  println(gleicherBesitzer(bmw,porsche));
  println(gleicherBesitzer(rover,porsche));
}

boolean gleicherBesitzer(Auto a1,Auto a2){
  if(a1.besitzer == a2.besitzer){
    return true;
  }else{
    return false;
  }
}
