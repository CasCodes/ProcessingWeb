String[] namen = {
  "Max Schmidt", "Lisa Marx", "Robin Meier",
  "Lara Huber", "Anna Groß", "Heribert Lehmann",
  "Harry Potter", "Obi-wan Kenobi", "Julia Kron"
};
int[] alter = {
  33, 28, 12,
  22, 23, 64,
  16, 102, 18
};
boolean[] weiblich = {
  false, true, false,
  true, true, false,
  false, false, true
};
int cFemale = 0;
int cU40 = 0;
int cMUE30 = 0;

for(int i = 0; i<namen.length;i++){
  if(weiblich[i]==true){
    cFemale += 1;
  }
  if(alter[i]<40){
    cU40 += 1;
  }
  if(weiblich[i]==false && alter[i]>30){
    cMUE30 += 1;
  }
}
println("Anzahl Frauen: "+cFemale);
println("Anzahl Personen U40: "+cU40);
println("Anzahl Männer Ü30: "+cMUE30);
