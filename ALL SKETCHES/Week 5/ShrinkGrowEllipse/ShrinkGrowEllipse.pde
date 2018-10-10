int x = 500;
int y = 500;
int size = 200;
//dist(x1, y1, x2, y2);

void setup()
{
  size(1000, 1000);
  background(236, 209, 250);
}

void draw()
{
  background(236, 209, 250);
  ellipse(500, 500, size, size);
  drawEllipse();
}

void drawEllipse()
{ 
  float d = dist(500, 500, mouseX, mouseY);
  if (d > size/2)
  {
    fill(255);
    size++;
  }
  else
  {
    fill(100, 0, 100);
    size--;
  }
}
