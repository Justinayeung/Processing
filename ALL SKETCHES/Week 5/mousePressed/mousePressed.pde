boolean mouseLeft;

void setup()
{
  size(600, 600);
}

void draw()
{
//  if (mousePressed)
//  {
//    background(4, 211, 206);
//  }
//  else
//  {
//    background(0);
//  }

  if (mouseX < width/2)
  {
    mouseLeft = true;
  }
  else
  {
    mouseLeft = false;
  }
  
  if (keyPressed && key == 'r' && mouseLeft)
  {
    background (255, 0, 0);
  }
  else
  {
    background (0);
  }
}
