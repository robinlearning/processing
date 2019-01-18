class Destination extends Block
{
  
  PImage img;
  
  Destination(float _x, float _y, float _w, float _h, PImage _img)
  {
    super(_x, _y, _w, _h);
    img = _img;
  }

  void display() {
    fill(111, 255 , 0);
    noStroke();
    if(scene.recentScene != 0)
    image(img, x, y, w, h);

  }
  
  void changeImage(PImage _img)
  {
    img = _img;
  }
  
  void changeSize(float _w, float _h)
  {
    w = _w;
    h= _h;
  }
  
  
  void changePlace(float tempX, float tempY){
    
    x = tempX;
    y = tempY;
  }
  
  
}
