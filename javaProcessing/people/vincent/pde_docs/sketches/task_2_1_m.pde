void draw(){
  background(255);
  float ytod=mouseY*3.65;
  float xline=(cos(radians((ytod)-90))*50)*0.7;
  float yline=(sin(radians((ytod)-90))*50)*0.7;
  ellipse(50,50,width*0.8,height*0.8);
  line(50,50,xline+50,yline+50);
}
