int X = 0;
int Y = 0;
Block[][] a = new Block[9][9];
int n;
PImage mine;
boolean lose;
PImage flag;

void setup() {
  size(650, 650);
  for (int X = 0; X < 9; X++) {
    for (int Y = 0; Y < 9; Y ++) {
      a[X][Y] = new Block(X*50 + 100, Y*50 + 100);
    }
  }
  n = 0;
  mine = loadImage("maher-mine.png");
  lose = false;
  flag = loadImage("ACAD-logo.png");
}

void draw() {
  background(0);
  for (int X = 0; X < 9; X++) {
    for (int Y = 0; Y < 9; Y++) {
      a[X][Y].display();
      if (a[X][Y].hasMine == true && a[X][Y].revealed == true) {
        fill(255, 0, 0);
        rect(a[X][Y].x, a[X][Y].y, 50, 50);
        image(mine, a[X][Y].x, a[X][Y].y);
        lose = true;
      }
      if (a[X][Y].revealed == true && a[X][Y].m > 0) {
        fill(255);
        textSize(25);
        textAlign( CENTER, CENTER);
        text(a[X][Y].m, a[X][Y].x + 25, a[X][Y].y + 25);
      }
      if ( lose == true && a[X][Y].hasMine == true && a[X][Y].flagged == false) {
        a[X][Y].revealed = true;
      }
      if ( a[X][Y].flagged == true) {
        image(flag, a[X][Y].x, a[X][Y].y);
      }
    }
  }
  while (n<11) {
    a[round(random(0, 8))][round(random(0, 8))].hasMine = true;
    n++;
  }
}

void mouseClicked() {
  for (int X = 0; X < 9; X++) {
    for (int Y = 0; Y < 9; Y++) {
      if (mouseX > a[X][Y].x && mouseX < a[X][Y].x + 50 && mouseY > a[X][Y].y && mouseY < a[X][Y].y +50) {
        if (mouseButton == LEFT) {
          a[X][Y].disappear();
          if (a[X][Y].hasMine == false) {
            if (X<8) {
              if (a[X+1][Y].hasMine) {
                a[X][Y].m++;
              }
            }
            if (X>0) {
              if (a[X-1][Y].hasMine) {
                a[X][Y].m++;
              }
            }
            if (X<8 && Y<8) {
              if (a[X+1][Y+1].hasMine) {
                a[X][Y].m++;
              }
            }
            if (X<8 && Y>0) {
              if (a[X+1][Y-1].hasMine) {
                a[X][Y].m++;
              }
            }
            if (X>0 && Y<8) {
              if (a[X-1][Y+1].hasMine) {
                a[X][Y].m++;
              }
            }
            if (X>0 && Y>0) {
              if (a[X-1][Y-1].hasMine) {
                a[X][Y].m++;
              }
            }
            if (Y<8) {
              if (a[X][Y+1].hasMine) {
                a[X][Y].m++;
              }
            }
            if (Y>0) {
              if (a[X][Y-1].hasMine) {
                a[X][Y].m++;
              }
            }
          }
        }
        if (mouseButton == RIGHT) {
          a[X][Y].flagged = true;
        }
      }
    }
  }
}