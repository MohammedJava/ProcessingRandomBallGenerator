class Ball {
  //random velocity
  float xspeed = random(1,3.5);
  float yspeed = random(-1,-3.5);
  float x;
  float y;
  float diameter;

  Ball(float x, float y, float diameter) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
  }

  void update() {
    move();
    bounce();
    display();
  }

  void display() {
    //Sets the color used to draw lines and borders around shapes
    stroke(0);
    //Sets the color used to fill shapes
    fill(127);
    //The first two parameters set the location, and the third and fourth parameters set the shape's width and height
    ellipse(x, y, diameter, diameter);
  }

  void ascend() {
    //checks top edge
    if (y >= diameter/2) {
      y--;
    }
  }

  void move() {
    x += xspeed;
    y += yspeed;
  }
  
  void bounce(){
    //if x <= diamaeter or the height of canvas
    if(x <= diameter/2 || x >= (width - diameter/2)){
    xspeed = -xspeed;
    }
    if(y <= diameter/2 || y >= (height - diameter/2)){
    yspeed = -yspeed;
    }
  }


  void pop() {
    if ((mouseX >= x - diameter/2 && mouseX <= x + diameter/2)
      && (mouseY >= y - diameter/2 && mouseY <= y + diameter/2)) {
      diameter = 0;
    }
  }
}
