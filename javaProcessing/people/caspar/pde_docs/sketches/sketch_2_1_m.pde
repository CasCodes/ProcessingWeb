void setup() {
  size(500,500);
  strokeWeight(3);
  translate(250, 250);
  
}

void draw() {
  background(69);
  
  fill(0, 0, 0, 0);
  ellipse(250, 250, 400, 400);
  
  //-cos damit der Zeiger oben anfängt, 
  //*0.72 um mouseY in Teile von 360 umzuwandeln * 200 für länge
  float y = height/2 -cos(radians(mouseY*0.72)) * 200;
  float x = height/2 + sin(radians(mouseY*0.72)) * 200;
  
  line(250, 250, x, y);

}
