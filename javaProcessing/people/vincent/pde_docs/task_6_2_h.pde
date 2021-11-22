int[] a = {1,2,25};
int[] b = {9,18};
int[] c = new int[a.length+b.length];

for(int i = 0; i<a.length;i++){
  c[i] = a[i];
}

for(int i = 0; i<b.length;i++){
  c[i+a.length]=b[i];
}
println(c);
