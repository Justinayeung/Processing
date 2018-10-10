// Bouncing Ball Challenge

//Defining variables
int x;           //x position
int y;           //y position
int diam;        //Diameter of circle
int radius;      //Radius of circle
int xSpeed;      //Speed
int ySpeed;      //Speed

void setup()
{
  size(600, 800);       //Canvas size
  x = width/2;         //Defining x (position = center)
  y = height/2;        //Defining y (position = center)
  diam = 100;          //Defining diameter = 100
  radius = diam/2;     //Radius = half of diameter so 50
  xSpeed = 3;
  ySpeed = 2;
}

void draw()
{
  background(100);     //Background color

  x += xSpeed;    //Position x += xSpeed (will keep moving)
  y += ySpeed;    //Position y += ySpeed (will keep moving)
  
  if(x > width - radius || x < radius)   //If position x is > width - radius --OR-- if position x < 0 + radius (boundaries)
  {
    xSpeed *= -1;     //Then speed *= -1 meaning ball could continue in opposite direction
  }
  
  if(y > height - radius || y < radius)
  {
    ySpeed *= -1;     //Then direction *= -1 meaning ball could continue in opposite direction
  }
  
  ellipse(x, y, diam, diam);     //Making the ellipse shape (ellipse (x, y, width, height))
  
}
