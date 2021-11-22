void setup() {
  Adressbuch a = new Adressbuch();

  for (int i = 0; i < a.namen.length; i++) {
    println(a.namen[i] + ": " + a.tel[i]);
  }
}
