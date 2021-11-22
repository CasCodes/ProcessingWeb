int[] foo = {10,20,30,40,50};

for(int i = 4; i>=1;i--){
  foo[i] = foo[i-1];
}
println(foo);
