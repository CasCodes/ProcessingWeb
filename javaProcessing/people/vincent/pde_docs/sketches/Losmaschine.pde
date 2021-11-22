class Losmaschine {
  String[] lose = { "Niete", "Niete", "1 Punkt", "Niete", "1 Punkt", "10 Punkte" };
  
  String losZiehen(){
    int yo = round(random(lose.length-1));
    return lose[yo];
  }
}
