class Walker
{
  //Variables/data associated with each Walker object
  float x;
  float y;
  int s;
  
  //Initialization function - initializes each Walker object
  Walker(float x0, float y0)
  {    
    //Option 1: Hard coding default values
    //x = width/2;
    //y = height/2;
    
    //Option 2: Pass values as parameters
    x = x0;
    y = y0;
    s = 20;
  }
  
  void display()
  {
    ellipse(x, y, s, s);
  }
  
  void walk()
  {
    float randX = random(-5, 5);
    float randY = random(-5, 5);
    
    x += randX;
    y += randY;
  }
}
