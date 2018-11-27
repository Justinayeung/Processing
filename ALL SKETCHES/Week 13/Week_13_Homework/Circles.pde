class Circle
{
  //Defining variables
  float size, offset, scalar;
  float angle;
  float speed;
  
  //Initialization function - initializes each object
  Circle(float s, float a, float o, float sc, float speed0)
  {
    //Passing values as parameters
    size = s;
    angle = a;
    offset = o;
    scalar = sc;
    speed = speed0;
  }
  
  void display()
  {
    float x = offset + cos(angle) * scalar;      //X position = offset + cos(angle) (cos = a/h - usually starts at -1 or 1) * the position
    float y = offset + sin(angle+1) * scalar;    //Y position = offset + sin(angle) (sin = o/h - usually starts at 0) * the position
    ellipse(x, y, size, size);                   //Ellipse shape
  }
  
  void spin()
  {
    angle += speed;    //Rate of spin
    scalar -= 0.6;     //Spin decrease(cirlce will decrease)
    
    if(scalar <= 100)   //Circle decreases until 100 then goes back to width/2 (the outer circle)
    {
      scalar = width/2;
    }
  } 
}
