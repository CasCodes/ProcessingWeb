void setup(){
  greet("Schmidt",true);
}

void greet(String name, boolean isFemale){
  if(isFemale){
    print("Hallo Frau",name);
  }else{
    print("Hallo",name);
  }
}
