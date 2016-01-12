class Block{
  boolean hasMine;
  float X;
  float Y;
  
  Block(){
  }
  
  void display(float x, float y){
   x= X;
   y= Y;
    fill(150);
    rect(X,Y,20,20);
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