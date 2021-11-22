void setup() {
  int[] a = { 1, 5, -10, 20, -3 };
  noNegatives(a);
  println(a);
}

int[] noNegatives(int[] arr){
  for(int i = 0; i<arr.length;i++){
    if(arr[i]<0){
      arr[i]=0;
    }
  }
  return arr;
}
