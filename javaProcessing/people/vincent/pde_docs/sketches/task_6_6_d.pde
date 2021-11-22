int[][] tabelle = {
  {1001,5,500,0},
  {2001,23,1200,0},
  {3001,2,85,0}
};
int ges=0;

for(int k = 0;k<tabelle.length;k++,ges=0){
  ges=tabelle[k][1]*tabelle[k][2];
  tabelle[k][3]=ges;
  println(
  tabelle[k][1]+"x",
  "Artikel Nr.",
  tabelle[k][0],
  "a",
  tabelle[k][2],
  "EUR =",
  tabelle[k][3]
  );
}
