float[] createRandomArray(int anzahl){
  float[] arr = new float[anzahl];
  for(int i = 0;i<arr.length;i++){
    arr[i] = random(1);
  }
  return arr;
}

void setup(){
  println(createRandomArray(3));
}  
