class Ball {
  PVector pos;
  PVector speed;
  float tone;
  boolean con;
  Ball lizz;

  Ball() {
    pos = new PVector(random(5, width-5), random(5, height-5));
    speed = new PVector(random(-2, 2), random(-2,2));
    tone = random(100,255);
    con = false;
  }

  void render() {
    noStroke();
    fill(tone);
    ellipse(pos.x, pos.y, 10, 10);
  }

  void update() {
    pos.add(speed);
    if (pos.x < 5 || pos.x > width-5) {
      speed.x = -speed.x;
    }
    if (pos.y < 5 || pos.y > height-5) {
      speed.y = -speed.y;
    }
  }
  
  Ball checkCollision(Ball[] balls){
    float col = 1.1;
    for(int i2 = 0;i2<balls.length;i2++){
        
        int rad = 5;
        if((this.pos.x+(rad)>b[i2].pos.x-rad && this.pos.x+(rad)<balls[i2].pos.x+(rad)
        || this.pos.x<balls[i2].pos.x+(rad) && this.pos.x > balls[i2].pos.x-rad)
        && (this.pos.y+(rad)>balls[i2].pos.y-rad && this.pos.y+(rad)<balls[i2].pos.y+rad
        || this.pos.y<balls[i2].pos.y+(rad) && this.pos.y+(rad)>balls[i2].pos.y-rad))
    {
       col = i2;
   }
   if(col == 1){
      return balls[int(col)];
    }else{
      return null;
    }
      }
}
}
