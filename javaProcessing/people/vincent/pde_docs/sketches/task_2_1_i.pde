void draw(){
  background(255);
  rectMode(CORNERS);
  rect(
    mouseX,
    mouseY,
    100-mouseX,
    100-mouseY
    );
}
