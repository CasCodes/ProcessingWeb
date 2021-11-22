int[] filterArrayPositive(int[] numbers){
  int count = 0;
  for(int i=0;i<numbers.length;i++){
    if(numbers[i]>=0){
      count++;
    }
  }
  int[] arr = new int[count];
  int len = 0;
  for(int i=0;i<numbers.length;i++){
    if(numbers[i]>=0){
      arr[len] += numbers[i];
      len++;
    }
  }
  return arr;
}

void setup(){
  int[] a = {1, -1, -20, 15};
  println(filterArrayPositive(a));
}
