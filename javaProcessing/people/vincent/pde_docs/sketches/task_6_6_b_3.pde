int[][] a = new int[3][5];
int l = 0;

for(int k = 0; k < a.length; k++,l=a[k-1][1]){
  for(int i = 0; i < a[k].length;i++,l++){
    a[k][i]=l;
    print(a[k][i] + " ");
  }
  println();
}
