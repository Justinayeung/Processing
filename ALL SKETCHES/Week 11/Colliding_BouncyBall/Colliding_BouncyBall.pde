int numBalls = 15;    //Number of ellipses that are displayed

ArrayList<Ball> bounceBall = new ArrayList<Ball>();

void setup()
{
  size (800, 800);
  
  for(int i = 0; i < numBalls; i++)     //Loop for number of balls
  {
    //Ball(float x0, float y0, float xSpeed0, float ySpeed0, float size0)
    bounceBall.add(new Ball(random(100, 600), random(100, 600), random(-5, 5), random(-5, 5), random(40, 60)));
  }
}

void draw()
{
  background (200);
  for (Ball b: bounceBall)    //For (each Ball (name) : in my ArrayList)
  {
    b.checkCollision(bounceBall);
    b.display();    //Calling display from class
    b.bounce();     //Calling bounce from class
  }
}

//--------------------------------------------------------------------------------------
//IN CLASS


//int numBounce = 5;
//ArrayList<Ball> bounceBall = new ArrayList<Ball>();

//void setup()
//{
//  size (600, 600);
  
//  for(int i = 0; i < numBounce; i++)
//  {
//    bounceBall.add(new Ball());
//  }
//}

//void draw()
//{
//  background(0);
//  for (Ball b: bounceBall)
//  {
//    b.checkBoundaries();
//    b.checkCollision(bounceBall);
//    b.move();
//    b.display();
//  }
//}
