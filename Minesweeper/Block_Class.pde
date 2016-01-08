class Block{
  boolean hasMine;
  
  block(){
  }
  
  void display(x,y){
    fill(150);
    rect(x,y,20,20);
  }
  
  boolean mine(){
    hasMine = true;
    fill(0);
    ellipse(x,y,5,5)
  }
  
  int surroundingMines(){
    //check how many mines around
    int n;
    return n;
  }
    