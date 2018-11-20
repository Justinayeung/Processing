ArrayList<Ball> balls = new ArrayList<Ball>();
int numBalls = 10;

void setup()
{
  size(600, 600);
  for(int i = 0; i < numBalls; i++)
  {
    balls.add(new Ball(random(30, 100)));
  }
}

void draw()
{
  background(255);
  for(Ball b : balls)
  {
    b.checkBoundaries();
    b.display();
    b.move();
  }
}
