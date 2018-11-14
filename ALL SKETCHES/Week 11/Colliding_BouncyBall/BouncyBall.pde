class Ball
{
  //Data
  float x, y, xSpeed, ySpeed;
  float size;
  //color fill;
  
  //Constructor(x position, y position, x speed, y speed, ball size)
  Ball(float x0, float y0, float xSpeed0, float ySpeed0, float size0)
  {
    //Setting each equal to data
    x = x0;
    y = y0;
    xSpeed = xSpeed0;
    ySpeed = ySpeed0;
    size = size0;
  }
  
  //What will be displayed
  void display()
  {
    ellipse(x, y, size, size);    //Defining shape
    fill(random(0, 255), random(0, 255), random(0, 255));    //Filling each ellipse wiht a random color
  }
  
  void bounce()    //Speed and boundaries
  { 
    x += xSpeed;    //X movement
    y += ySpeed;    //Y movement
    
    if(x >= width - size/2 ||  x <= 0 + size/2)    //Boundary for width(x)
    {
      xSpeed *= -1;    //Change direction
    }
    
    if(y >= height - size/2 ||  y <= 0 + size/2)    //Boundary for height(y)
    {
      ySpeed *= -1;    //Change direction
    }
    
    //This made all the balls move back and forth in a short distance
    //float distance = dist(x, y, x, y);
    
    //if(distance < size)
    //{
    //  xSpeed *= -1;
    //  ySpeed *= -1;
    //}
  }
  
  void checkCollision(ArrayList<Ball> bounceBall)
  {
    for(Ball b : bounceBall)
    {
      float d = dist(x, y, b.x, b.y);
      float sumRad = size/2 + b.size/2;
      
      if(d <= sumRad)
      {
        xSpeed *= -1;
        ySpeed *= -1;
        b.xSpeed *= -1;
        b.ySpeed *= -1;
      }
    }
  }
}

//--------------------------------------------------------------------------------------
//IN CLASS


//class Ball
//{
//  float x, y, xSpeed, ySpeed;
//  int size;
//  color fill;
  
//  Ball()
//  {  
//    size = 50;
//    fill = color(255);
//    x = random(0 + size, width - size);
//    y = random(0 + size, height - size);
    
//    float xDir = random(-1, 1);
//    float yDir = random(-1, 1);
    
//    if(xDir > 0)
//    {
//      xSpeed = 5;
//    }
//    else
//    {
//      xSpeed = -5;
//    }
    
//    if(yDir > 0)
//    {
//      ySpeed = 5;
//    }
//    else
//    {
//      ySpeed = -5;
//    }
//  }

//  void display()
//  {
//    fill(fill);
//    ellipse (x, y, size, size);
//  }

//  void move()
//  {
//    x += xSpeed;
//    y += ySPeed;
//  }

//  void checkBoundaries()
//  {
//    if(x >= width - size/2 ||  x <= 0 + size/2)
//    {
//      xSpeed *= -1;
//    }
    
//    if(y >= height - size/2 ||  y <= 0 + size/2)
//    {
//      ySpeed *= -1;
//    }
//  }

//  void checkCollision(ArrayList<Ball> bounceBall)
//  {
//    for(Ball b : bounceBall)
//    {
//      float d = dist(x, y, b.x, b.y);
//      float sumRad = size/2 + b.size/2;

//     if(d <= sumRad)
//     {
//        xSpeed *= -1;
//        ySpeed *= -1;
//        b.xSpeed *= -1;
//        b.ySpeed *= -1;
//     }
//    }
//  }
//}
