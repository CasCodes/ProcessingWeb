class Robot{
  String name;
  
  void stellDichVor(){
    println("Hallo, ich heiße",name);
  }
  
  void sagWetter(){
    String[] sentences = {
    "Das Wetter wird gut.",
    "Bald gibt es Regen...",
    "Ich kann schon Wolken sehen."
    };
    println(sentences[round(random(2))]);
  }
  
  void tschues(){
    println(name,"sagt auf Wiedersehen!");
  }
}
