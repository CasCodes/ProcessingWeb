void setup() {
  greet("Schmidt");
  greet("Schmdit", true);
  greet("Schmidt", false, "Dr.");
}

void greet(String name){
  println("Guten Tag, Frau/Herr",name);
}

void greet(String name,boolean isFemale){
  String gender = "Herr";
  if(isFemale){
    gender = "Frau";
  }
  println("Guten Tag,",gender,name);
}

void greet(String name,boolean isFemale,String titel){
  String gender = "Herr";
  if(isFemale){
    gender = "Frau";
  }
  println("Guten Tag,",gender,titel,name);
}
