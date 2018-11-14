float angle = 0.0;

void setup()
{
  size (600, 600);
}

void draw()
{
  float sinVal = sin(angle);
  angle += 0.01;
  float bg = map(sinVal, -1, 1, 0, 255);
  background(bg);
}
