void setup() {
  int summe = add(10, -5);

  PVector v1 = new PVector(1, 1);
  PVector v2 = new PVector(100, 50);
  PVector summeVek = add(v1, v2);

  println("Summe Zahlen = " + summe);
  println("Vektor 1 = " + v1);
  println("Vector 2 = " + v2);
  println("Summe Vektoren = " + summeVek);
}

int add(int n1,int n2){
  return n1+n2;
}

PVector add(PVector n1, PVector n2){
  return n1.add(n2);
}
