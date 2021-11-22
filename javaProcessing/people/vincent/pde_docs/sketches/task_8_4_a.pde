void setup() {
  Kunde barack = new Kunde("Barack Obama", "Amerika");
  Kunde angie = new Kunde("Angela Merkel", "Deutschland");

  Auto bmw = new Auto("BMW", "rot", angie);
  Auto porsche = new Auto("Porsche", "schwarz", barack);
  Auto rover = new Auto("Land Rover", "schwarz", barack);
  
  println(bmw.besitzer.adresse);
  println(porsche.besitzer.adresse);
  println(rover.besitzer.adresse);
}
