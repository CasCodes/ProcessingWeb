int[] numbers(int start, int len){
  int[] arr = new int[len];
  for(int i = 0;i<arr.length;i++,start++){
    arr[i] = start;
  }
  return arr;
}

int[] numbers2(int start, int end){
  int[] arr = new int[end-start+1];
  for(int i = 0;i<arr.length;i++,start++){
    arr[i] = start;
  }
  return arr;
}

void setup(){
  println(numbers(5,3));
  println();
  println(numbers2(3,6));
}
