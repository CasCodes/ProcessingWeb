void setup(){
  size(450,300);
}

void draw(){
noLoop();
//Grid
  line(150,0,150,300);
  line(300,0,300,300);
  line(0,150,450,150);
  
//1.1 a) Haus
  rectMode(CENTER);
  rect(75,100,75,75);
  triangle(75.0,12.5,37.5,61,113.5,61);
  
//1.1 b) Halbkreis
  arc(225,100,75,75,radians(180),radians(360));
  
//1.1 c) Haus
  
  //Viereck
  beginShape();
  vertex(420,130);
  vertex(330,130);
  vertex(330,55);
  vertex(420,55);
  endShape(CLOSE);
  
  //Dreieck
  beginShape(TRIANGLES);
  vertex(375,25);
  vertex(330,55);
  vertex(420,55);
  endShape();
  
//1.1 d) Drudenfuß
  beginShape(TRIANGLES);
  fill(255);
  
  vertex(75,262.5);
  vertex(10,200);
  vertex(140,200);
  
  vertex(42,230);
  vertex(75,150);
  vertex(130,300);
  
  vertex(110,230);
  vertex(75,150);
  vertex(20,300);
  endShape(CLOSE);
  
//1.1 e) Gesicht
  fill(255);
  ellipseMode(CENTER);
  
  //Face
  ellipse(225,225,120,120);
  
  //Eyes
  ellipse(200,200,10,10);
  ellipse(250,200,10,10);
  
  //Nose
  triangle(225,225,215,240,235,240);
  
  //Mouth
  arc(225,230,75,75,radians(20),radians(160));
  
  //1.1 f) Pyramide
  rectMode(CORNER);
  int x = 325;
  int y = 250;
  int s = 25;
  int i = 0;
  
  while(i<=4){
    if(i==0){
      rect(x,y,s,s);
    }
    if(i==1){
      rect(x+25,y,s,s);
      rect(x+12.5,y-25,s,s);
    }
    if(i==2){
      rect(x+50,y,s,s);
      rect(x+37.5,y-25,s,s);
    }
    if(i==3){
      rect(x+75,y,s,s);
      rect(x+(37.5+25),y-25,s,s);
      rect(x+25,y-50,s,s);
    }
    if(i==4){
      rect(x+50,y-50,s,s);
      rect(x+37.5,y-75,s,s);
    }
    i+=1;
  }
}
