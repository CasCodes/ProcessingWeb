void setup() {
  int[] a = {1, 2, 3, 4, 5};
  swap(a, 1, 4);
  println(a);
}

void swap(int[] arr,int n1, int n2){
  int num1 = arr[n1];
  int num2 = arr[n2];
  arr[n2] = num1;
  arr[n1] = num2;
}
