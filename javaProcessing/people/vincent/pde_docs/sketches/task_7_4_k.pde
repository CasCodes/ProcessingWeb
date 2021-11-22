int[] insertArray(int[] a,int[] b, int pos){
  int[] arr = new int[a.length+b.length];
  int i2 = 0;
  int i3 = (a.length-1)-pos;
  for(int i = 0;i<arr.length;i++){
    if(i<pos){
      arr[i]=a[i];
    }else if(i>=pos && i<pos+b.length){
      arr[i]=b[i2];
      i2++;
    }else{
      arr[i]=a[i3];
      i3++;
    }
  }
  return arr;
}

void setup() {
  int[] a = { 1, 2, 3, 4, 5 };
  int[] b = { 101, 102, 103 };
  println(insertArray(a, b, 2));
}
