float angle = 0.0f;
float incr = 0.05;

void setup()
{
  size(600, 600);
}

void draw()
{
  background(0);
  float y = height/2 + sin(angle) * 200;
  float x = width/2 + cos(angle) * 200;
  
  ellipse(x, y, 100, 100);
  
  angle += incr;
}
