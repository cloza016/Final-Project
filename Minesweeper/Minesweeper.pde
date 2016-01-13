int X = 0;
int Y = 0;
Block[][] a = new Block[9][9];


void setup() {
  size(500, 500);
  for (int X = 0; X < 9; X++) {
    for (int Y = 0; Y < 9; Y ++) {
      a[X][Y] = new Block(X*50, Y*50);
    }
  }
}

void draw() {
  background(0);
  for (int X = 0; X < 9; X++) {
    for (int Y = 0; Y < 9; Y ++) {
      a[X][Y].display();
      if (mousePressed) {
        if (mouseX > a[X][Y].x && mouseX < a[X][Y].x + 50 && mouseY > a[X][Y].y && mouseY < a[X][Y].y +50) {
          a[X][Y].disappear();
        }
      }
    }
  }
}