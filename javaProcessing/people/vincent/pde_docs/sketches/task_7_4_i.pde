void klausurCheck(String[] namen, int[] punkte){
  int count = 0;
  for(int i = 0;i<punkte.length;i++){
    if(punkte[i]>=50){
      count++;
    }
  }
  int[] bestanden = new int[count];
  int len = 0;
  for(int i = 0;i<punkte.length;i++){
    if(punkte[i]>=50){      
      bestanden[len] = i;
      len++;
    }
  }
  for(int i = 0;i<bestanden.length;i++){
    println(namen[bestanden[i]],"hat mit",punkte[bestanden[i]],"bestanden.");
  }
  println(namen.length-count,"Teilnehmer sind durchgefallen");
}

void setup() {
  String[] namen = {"Schmidt", "Holz", "Hauser", "Eberhardt", "Drexler"};
  int[] punkte = {50, 3, 44, 98, 80};
  klausurCheck(namen, punkte);
}
