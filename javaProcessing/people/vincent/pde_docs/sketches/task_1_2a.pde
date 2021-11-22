void setup(){
  size(200,100);
}

void draw(){
noLoop();
//Explanation of Code 1
  /*
  Der Kreis(Kreis weil die letzten Werte, der Ellipse,
  gleich groß sind) ist schwarz, wegen fill(0).
  Das Rechteck und das Dreieck sind weiß, wegen 
  fill(255).
  */
  
//Code 1
  fill(0);
  ellipse(40, 40, 35, 35);
  fill(255);
  rect(40, 40, 40, 30);
  triangle(60, 60, 20, 90, 60, 90);

//Seperation Line
  line(100,0,100,200);

//Explanation of Code 2
  /*
  Der Kreis und das Rechteck sind schwarz (wegen fill(0)
  und das Dreieck ist weiß, wegen fill(255).
  Der Grund dafür, dass 255 weiß und 0 schwarz ist,
  kann man sich merken, indem das die Lichtmenge ist,               
  somit ist 0 keine Lichtmenge und 255 das Maximum
  der Lichtmenge.
  */
  
//Code 2
  fill(0);
  ellipse(140, 40, 35, 35);
  rect(140, 40, 40, 30);
  fill(255);
  triangle(160, 60, 120, 90, 160, 90);
}
