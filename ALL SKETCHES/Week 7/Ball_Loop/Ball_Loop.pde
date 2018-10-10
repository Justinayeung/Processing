int x;
int y;
int diam;
int radius;
int xSpeed;
int value;

void setup()
{
  size (600, 600);
  x = width/2;
  y = height/2;
  diam = 100;
  radius = diam/2;
  xSpeed = 5;
}

void draw()
{
  background (252, 133, 155);
  
  x += xSpeed;
  
  ellipse (x, y ,diam, diam);
  
  if (x > width + diam || x < 0 - diam)
  {
    x = 0 - diam;
  }
  
  mouseClicked();
}

void mouseClicked()
{
  
}
