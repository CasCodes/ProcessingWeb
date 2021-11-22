void setup() {
  Person[] personal = new Person[4];
  personal[0] = new Person("Harry", 36, 1.80);
  personal[1] = new Person("Sally", 26, 1.71);
  personal[2] = new Person("Angie", 56, 1.60);
  personal[3] = new Person("Jerry", 15, 1.75);

  printByAge(personal, 30);
}

void printByAge(Person[] p_list,int x){
  for(int i = 0;i<p_list.length;i++){
    if(p_list[i].alter > x){
      println(p_list[i].name);
    }
  }
}
