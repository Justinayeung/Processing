Walker w1;
Walker w2;

void setup()
{
  size(600, 600);
  w1 = new Walker(200, 100);
  w2 = new Walker(400, 300);
}

void draw()
{
  w1.display();
  w2.display();
  
  w1.walk();
  w2.walk();
}
