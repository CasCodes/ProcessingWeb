int[][] a = {
  {4,0,2,44},
  {3,20,33,-4},
  {12,-30,6,110}
};
int sum=0;

for(int k = 0; k<a.length;k++){
  for(int i = 0;i<a[k].length;i++){
    sum = sum + a[k][i];
  }
}
println(sum);
