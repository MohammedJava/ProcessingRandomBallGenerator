Ball[] a;
int size;

void setup() {
  size(640, 360);

  //random number of balls 
  size = (int) random(3, 11);
  //initialize array
  a = new Ball[size];
  for (int i = 0; i < size; i++) {
    //random diameter between 10 and 70 
    int randDiam = (int) random(10, 70);
    //Creating balls while ensuring they are not created outside the canvas
    a[i] = new Ball((int) random(0+randDiam/2, 640 - randDiam/2), (int) random(0+randDiam/2, 360-randDiam/2), randDiam) ;
  }
}

void draw() {
  //update white background each time
  background(255);
  //update all balls 
  for (int i = 0; i < size; i++) {
    a[i].update();
  }
}
