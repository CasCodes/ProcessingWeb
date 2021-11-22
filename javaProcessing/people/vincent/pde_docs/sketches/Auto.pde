class Auto{
  float km_stand;
  float tankfuellung;
  float avg_verbrauch;//pro 100km
  
  float reichweite(){
    float reichweite = tankfuellung/(avg_verbrauch/100);
    return reichweite;
  }
  
  float nxt_inspektion(){
    float nxt_inspektion = 20000-km_stand;
    return nxt_inspektion;
  }
  
  void status(){
    println(reichweite()+"km können noch gefahren werden");
    println(nxt_inspektion()+"km bis zur nächsteninspektion");
  }
}
