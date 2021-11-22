void setup(){
  Robot r1 = new Robot();
  Robot r2 = new Robot();
  
  r1.name = "Ruben";
  r2.name = "Eli";
  
  r1.stellDichVor();
  r1.sagWetter();
  r1.tschues();
  println();
  r2.stellDichVor();
  r2.sagWetter();
  r2.tschues();
}
