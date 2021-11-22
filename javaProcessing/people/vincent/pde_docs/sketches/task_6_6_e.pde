int[][] m = {
  {1,1,2},
  {2,0,1}
};

int[] v = {10,20,30};

int[] w = new int[2];

int l = 0;

for(int k = 0; k < m.length; k++,l=0){
  for(int i = 0; i < m[k].length;i++){
    l+=m[k][i]*v[i];
    w[k]=l;
  }
}
println(w);
