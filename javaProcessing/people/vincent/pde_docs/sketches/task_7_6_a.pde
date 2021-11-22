int x = 0;
//Skopus x

void setup() {
  int num = 20;
//Skopus num
  size(200, 200);
  // println(num);
  // println(s);
  // println(x);
//Ende Skopus num
}

void draw() {
  ellipse(x, 50, 20, 20);
  if (x > width) {
    String s = "hello";
    //Skopus s
    x = 0;
    // println(num);
    // println(s);
    // println(x);
    //Ende Skopus s
  }
  // println(num);
  // println(s);
  // println(x);
}
//Ende Skopus x
