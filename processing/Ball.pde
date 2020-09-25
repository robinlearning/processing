
class Ball {

  float x;       // x location of square 
  float y;       // y location of square 
  float speedY;   // y-speed of square 
  float w;       // size
  PImage img;



  // Ball constuctor
  Ball(float tempX, float tempY, float tempW, PImage tempImg) {
    x = tempX;
    y = tempY;
    w = tempW;
    speedY = 0;
    img = tempImg;
  }

  void changePlace(float tempX, float tempY)
  {
    x = tempX;
    y = tempY;
  }




  void display() {
    // Display the square 

    if(scene.recentScene != 0)
      image(img, x, y, w, w);
    
  }


  void move(PVector v)
  {

    x = x + v.x;
    y = y + v.y;
  }



  void update() {
    // Add speed to location
    move(new PVector(0, speedY));
    speedY += gravity;
    speedY = constrain(speedY, -10, 4);
 
  }
}
