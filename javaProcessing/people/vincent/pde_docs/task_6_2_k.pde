int[] foo = {1,2,3,4,5,6};
int[] bar = new int[foo.length/2];
int a = 0;

for(int i = 0;i<foo.length/2;i++){
  bar[i] = foo[a]+foo[a+1];
  a+=2;
}
println(bar);
