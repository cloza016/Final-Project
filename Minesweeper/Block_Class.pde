class Block {
  boolean hasMine;
  float x;
  float y;
  float g;

  Block(float X, float Y) {
    hasMine = false;
    x = X;
    y = Y;
    g =150;
  }

  void display() {
    fill(g);
    rect(x, y, 50, 50);
  }

  void disappear() {
    g=0;
    fill(0, 0, 0, 0);
    rect(x, y, 50, 50);
  }

  // boolean mine(){
  //hasMine = true;
  //fill(0);
  //ellipse(x,y,5,5);
  //}

  //int surroundingMines(){
  //check how many mines around
  //int n;
  //return n;
  //}
}