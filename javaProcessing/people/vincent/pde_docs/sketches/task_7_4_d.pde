int[] makeArray(int laenge, int zahl) {
    int[] result = new int[laenge];
    for (int i = 0; i < laenge; i++) {
        result[i] = zahl;
    }
    return result;
}

void setup(){
  println(makeArray(3,10));
}
