class Block
{

  float x;   //x location of block
  float y;   //y location of block
  float w;   //width of block
  float h;   //height of block


  Block(float _x, float _y, float _w, float _h)
  {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }

  boolean isInBlock( Ball ball2 )
  {
    //out
    if ( abs(ball2.x - x) > (ball2.w/2 + w/2) || abs(ball2.y - y) > (ball2.w/2 + h/2)   )
    {     
      return false;
    }

    //in
    return true;
  }


  PVector getOut()
  {
    //IF no touch
    if (abs(ball2.x - x) > ball2.w/2 + w/2 || abs(ball2.y - y) > (ball2.w/2 + h/2)) {
      return new PVector(0, 0);
    } 
    
    // dx < 0 && dy < 0
    float dx = abs(ball2.x - x) - (ball2.w/2 + w/2);
    float dy = abs(ball2.y - y) - (ball2.w/2 + h/2);
    
    ///If touch, Vertically
    if(dy > dx)
    {
      //IF Up
      if (ball2.y - y < 0) return new PVector(0, dy); 
      //IF down
      else return new PVector(0, -dy); 
    }
    else
    {
      //IF right
      if (ball2.x - x < 0) return new PVector(dx, 0); 
      //IF left
      else return new PVector(-dx, 0); 
    }
    
  }


  void display() {
    {
      fill(43,43,58);
      rect(x, y, w, h);
      
      noStroke();
      
      
    }
  }
}
