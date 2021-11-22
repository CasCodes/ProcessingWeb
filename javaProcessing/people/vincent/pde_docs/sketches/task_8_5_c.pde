void setup() {
  Person[] personal = new Person[4];
  personal[0] = new Person("Harry", 36, 1.80);
  personal[1] = new Person("Sally", 26, 1.71);
  personal[2] = new Person("Angie", 56, 1.60);
  personal[3] = new Person("Jerry", 15, 1.75);

  Person[] result = getByAge(personal, 30);
  
  for(int i = 0;i<result.length;i++){
    println(result[i].name);
  }
}

Person[] getByAge(Person[] p_list,int x){
  int count=0;
  for(int i = 0;i<p_list.length;i++){
    if(p_list[i].alter > x){
      count++;
    }
  }
  Person[] np_list = new Person[count];
  for(int i = 0,i2=0;i<p_list.length;i++){
    if(p_list[i].alter > x){
      np_list[i2] = p_list[i];
      i2++;
    }
  }
  return np_list;
}
