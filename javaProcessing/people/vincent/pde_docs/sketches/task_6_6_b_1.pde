int[][] a = new int[3][5];
int l = 0;

for(int k = 0; k < a.length; k++,l++){
  for(int i = 0; i < a[k].length;i++){
    a[k][l]=1;
    print(a[k][i] + " ");
  }
  println();
}
