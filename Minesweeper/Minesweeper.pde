int X = 0;
int Y = 0;
Block[][] a = new Block[9][9];
int n;

void setup() {
  size(500, 500);
  for (int X = 0; X < 9; X++) {
    for (int Y = 0; Y < 9; Y ++) {
      a[X][Y] = new Block(X*50, Y*50);
    }
  }
  n = 0;
}

void draw() {
  background(0);
  for (int X = 0; X < 9; X++) {
    for (int Y = 0; Y < 9; Y ++) {
      a[X][Y].display();
      if (mousePressed) {
        if (mouseX > a[X][Y].x && mouseX < a[X][Y].x + 50 && mouseY > a[X][Y].y && mouseY < a[X][Y].y +50) {
          a[X][Y].disappear();
          if (a[X][Y].hasMine) {
            //display
          } 
          if (a[X][Y].hasMine = false) {
            if (X<8) {
              if (a[X+1][Y].hasMine) {
                a[X][Y].m++;
              }
            }
            if (X>1) {
              if (a[X-1][Y].hasMine) {
                a[X][Y].m++;
              }
            }
            if (X<8 && Y<8) {
              if (a[X+1][Y+1].hasMine) {
                a[X][Y].m++;
              }
            }
            if (X<8 && Y>1) {
              if (a[X+1][Y-1].hasMine) {
                a[X][Y].m++;
              }
            }
            if (X>1 && Y<8) {
              if (a[X-1][Y+1].hasMine) {
                a[X][Y].m++;
              }
            }
            if (X>1 && Y>1) {
              if (a[X-1][Y-1].hasMine) {
                a[X][Y].m++;
              }
            }
            if (Y<8) {
              if (a[X][Y+1].hasMine) {
                a[X][Y].m++;
              }
            }
            if (Y>1) {
              if (a[X][Y-1].hasMine) {
                a[X][Y].m++;
              }
            }
            println(a[X][Y].m);
          }
        }
      }
    }
    while ( n < 10) {
      a[5][5].hasMine = true;
      n ++;
    }
  }
}