void setup() {
  Zahlenliste liste = new Zahlenliste();
  liste.addZahl(10);
  liste.addZahl(20);
  liste.addZahl(30);
  println("Liste der Länge " + liste.size());
  liste.show();

  // Liste verlängern und nochmal ausgeben
  liste.addZahl(-5);
  liste.addZahl(1002);
  println("Liste der Länge " + liste.size());
  liste.show();
}
