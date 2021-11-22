class Kunde{
  String name;
  int kundennr;
  
  Kunde(String vn, String nn, int nr){
    name = vn + " " + nn;
    kundennr = nr;
  }
  
  Kunde(String titel, String vn, String nn, int nr){
    name = titel + " " + vn + " " + nn;
    kundennr = nr;
  }
}
