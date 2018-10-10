float myRandomNum1 = random(200, 500); 
float myRandomNum2 = random(100, 150);
float myRandomNum3 = random(50, 100);

void setup()
{
  noStroke();
  size(500, 500);
  frameRate(10);
}

void draw()
{
  //ellipse (x, y, width, height)
  ellipse(random(0, 500), random(0, 500), myRandomNum1, myRandomNum1);
  ellipse(random(0, 500), random(0, 500), myRandomNum2, myRandomNum2);
  ellipse(random(0, 500), random(0, 500), myRandomNum3, myRandomNum3);
  //fill(RGBA)
  fill(random(0, 255), random(0, 255), random(0, 255), random(0, 255));
}
