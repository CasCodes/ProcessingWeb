void setup() {
  Person[] personal = new Person[4];
  personal[0] = new Person("Harry", 36, 1.80);
  personal[1] = new Person("Sally", 26, 1.71);
  personal[2] = new Person("Angie", 56, 1.60);
  personal[3] = new Person("Jerry", 15, 1.75);

  for(int i = 0;i<personal.length;i++){
    if(personal[i].alter > 30){
      println(personal[i].name);
    }
  }
}
