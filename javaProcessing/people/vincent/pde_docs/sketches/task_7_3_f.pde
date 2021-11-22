void setup(){
  println(istPrim(7));
  println(istPrim(15));
  println(istPrim(97));
}

boolean istPrim(int num){
  if(num <= 1){
    return false;
  }
  for(int i = 2; i <= sqrt(num); i++){
    if(num % i == 0){
      return false;
    }
  }
  return true;
}
