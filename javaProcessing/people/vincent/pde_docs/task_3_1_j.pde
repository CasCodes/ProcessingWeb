int gewinnChance = 20;

void draw(){}

void keyPressed(){
  int x = round(random(100));
  if(x<=20){
    println("gewonnen");
  }else{
    println("verloren");
  }
  println(x);
}
