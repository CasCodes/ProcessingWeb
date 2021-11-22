int[] foo = {1,2,3,4};

for(int i = 0; i<foo.length/2;i++){
  int temp = foo[i];
  foo[i] = foo[foo.length - i -1];
  foo[foo.length - i -1] = temp;
}
println(foo);
