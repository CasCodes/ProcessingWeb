int n1 = 0;
int n2 = 1;
int n3;
int count = 11;
print(n1+" "+n2);
for(int i=2;i<count;i++){
  //Formel: n+(n-1)
  n3 = n1+n2;
  print(" "+n3);
  n1 = n2;
  n2 = n3;
}
