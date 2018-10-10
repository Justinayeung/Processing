int x;
int y;
int diam;
int radius;
int xSpeed;
int ySpeed;
Boolean colorSwitch = true;

void setup()
{
  size(600, 600);
  x = width/2;
  y = height/2;
  diam = 100;
  radius = diam/2;
  xSpeed = 4;
  ySpeed = 6;
}

void draw()
{
  x += xSpeed;
  y += ySpeed;
  
  if (colorSwitch)
  {
    background(133, 207, 252);
  }
  else
  {
    background(238, 252, 133);
  }
  
  
  if (x > width - radius || x < radius)    //Boundary x
  {
    xSpeed *= -1;
    colorSwitch = !colorSwitch;    //Reverses the boolean
  }

  
  if (y > height - radius || y < radius)    //Boundary y
  {
    ySpeed *= -1;
    colorSwitch = !colorSwitch;    //Reverses the boolean
  }

  ellipse(x, y, diam, diam);
}
