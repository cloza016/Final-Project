class Block {
  boolean hasMine;
  float x;
  float y;
  float g;
  int m;
  boolean revealed;
  boolean flagged;

  Block(float X, float Y) {
    hasMine = false;
    x = X;
    y = Y;
    g =150;
    m = 0;
    revealed = false;
    flagged = false;
  }

  void display() {
    fill(g);
    rect(x, y, 50, 50);
  }

  void disappear() {
    g=0;
    fill(0, 0, 0, 0);
    rect(x, y, 50, 50);
    revealed = true;
  }
}