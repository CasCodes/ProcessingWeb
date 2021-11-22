class Zahlenliste{
  IntList arr = new IntList(1000);
  int used=size();
  
  int size(){
    return arr.size();
  }
  
  void addZahl(int zahl){
    arr.append(zahl);
  }
  
  int getZahl(int i){
    if(i < 0 && i > arr.size()){
      return arr.get(i);
    }else{
      return 0;
    }
  }
  
  void show(){
    for(int i=0;i<arr.size();i++){
      println("["+i+"]",arr.get(i));
    }
  }
  
  
}
