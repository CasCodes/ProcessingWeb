void setup() {
  Adressbuch a = new Adressbuch();
  String tel1 = a.findeTel("Lisa");
  String tel2 = a.findeTel("Horst");
  println("suche Lisa: " + tel1);
  println("suche Horst: " + tel2);
  }
