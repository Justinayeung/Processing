class Walker
{
  //Variables/data associated with each Walker object
  float x;
  float y;
  int s;
  
  float xStep;
  float yStep;
  
  //Initialization function - initializes each Walker object
  Walker(float x0, float y0, float xStep0, float yStep0)
  {    
    //Option 1: Hard coding default values
    //x = width/2;
    //y = height/2;
    
    //Option 2: Pass values as parameters
    x = x0;
    y = y0;
    s = 20;
    
    xStep = xStep0;
    yStep = yStep0;
  }
  
  void display()
  {
    noStroke();
    fill(0, 10);
    ellipse(x, y, s, s);
  }
  
  void walk()
  {
    //float randX = random(-5, 5);
    //float randY = random(-5, 5);
    
    //x += randX;
    //y += randY;
    
    x += random(-xStep, xStep);
    y += random(-yStep, yStep);
  }
}
