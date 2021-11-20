int[] punktX = new int[100];
int[] punktY = new int[100];
int num = 0;

void setup() {
  size(500, 500);
  background(69);
}

void draw() {
  for (int i= 0; i < num; i++) {
    fill(0);
    ellipse(punktX[i], punktY[i], 10, 10);
    
    if ((num % 2)==0 || num>1){
      line(punktX[num-1], punktY[num-1], punktX[num-2], punktY[num-2]);
    }
  }
}

void mousePressed() {
  punktX[num] = mouseX;
  punktY[num] = mouseY;
  num++;
}
