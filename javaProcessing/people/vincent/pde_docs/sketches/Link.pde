class Link {
  Ball ball1;
  Ball ball2;

  Link(Ball b1, Ball b2) {
    ball1 = b1;
    ball2 = b2;
  }

  void render() {
    stroke(255);
    strokeWeight(3);
    line(ball1.pos.x, ball1.pos.y, ball2.pos.x, ball2.pos.y);
  }
}
