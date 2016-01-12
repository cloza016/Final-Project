int count = 81;
Block[] a = new Block[count];
float x = 0;
float y = 0;

void setup() {
  size(500, 500);
  for (int i = 0; i<count; i++) {
    a[i] = new Block();
  }
}

void draw() {
  background(255);
  for (int i = 0; i<count; i++) {
    a[i].display(x, y);
    if (x<width) {
      x= x+20;
    } else {
      y = y + 1;
    }
  }
}