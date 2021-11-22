int[] create123(int anzahl){
  int[] arr = new int[anzahl];
  for(int i = 0;i<arr.length;i++){
    arr[i] = i+1;
  }
  return arr;
}

void setup(){
  println(create123(9));
}
