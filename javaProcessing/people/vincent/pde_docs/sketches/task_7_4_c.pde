float firstNegative(float[] arr){
  int i = 0;
  while(arr[i]>=0){
    i++;
  }
  return arr[i];
}

float lastNegative(float[] arr){
  int i = arr.length-1;
  while(arr[i]>=0){
    i--;
  }
  return arr[i];
}

void setup() {
  float[] test = { 5, -13, 32.5, -5.1, 0 };
  println(firstNegative(test));
  println(lastNegative(test));
}
