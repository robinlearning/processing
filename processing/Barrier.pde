//http://processingjs.nihongoresources.com/test/PjsGameEngine/docs/tutorial/mario.html
//reference to make a level leyer

class  Barrier extends Block
{
  
  PImage img;
  
  Barrier(float _x, float _y, float _w, float _h, PImage _img)
  {
    super(_x, _y, _w, _h);
    img = _img;
  }

  void display() {
    image(img, x, y, w, h);

  }
  

   
}
