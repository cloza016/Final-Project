int x = 0;
int y = 0;
Block[][] a = new Block[9][9];


void setup() {
  size(500, 500);
  for (int x = 0; x < 9; x++) {
    for (int y = 0; y < 9; y ++) {
      a[x][y] = new Block(x*50, y*50);
    }
  }
}

void draw() {
  background(0);
  for (int x = 0; x < 9; x++) {
    for (int y = 0; y < 9; y ++) {
      a[x][y].display();
    }
  }
}