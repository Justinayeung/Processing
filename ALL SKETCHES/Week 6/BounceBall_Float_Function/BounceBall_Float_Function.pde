float xPos1, yPos1, xSpeed1, ySpeed1;
float xPos2, yPos2, xSpeed2, ySpeed2;
int sizeB1, sizeB2;
color fillColor = color(20, 100, 30);

void setup()
{
  size(600, 600);
  
  //Ball 1
  xPos1 = width/2;
  yPos1 = height/2;
  xSpeed1 = 6;
  ySpeed1 = 3;
  sizeB1 = 100;
  
  //Ball 2
  xPos2 = width/4;
  yPos2 = height/4;
  xSpeed2 = 10;
  ySpeed2 = 7;
  sizeB2 = 80;
  
  fill(fillColor);
}

void draw()
{
  background (0);
  ellipse(xPos1, yPos1, sizeB1, sizeB1);
  xSpeed1 = checkBoundaryX(xPos1, xSpeed1, sizeB1);  //Variables
  ySpeed1 = checkBoundaryY(yPos1, ySpeed1, sizeB1); 
  xPos1 += xSpeed1;
  yPos1 += ySpeed1;
  
  ellipse(xPos2, yPos2, sizeB2, sizeB2);
  xSpeed2 = checkBoundaryX(xPos2, xSpeed2, sizeB2);
  ySpeed2 = checkBoundaryY(yPos2, ySpeed2, sizeB2);
  xPos2 += xSpeed2;
  yPos2 += ySpeed2;
  
  float dist = checkDistance(xPos1, yPos1, xPos2, yPos2);
  
  //The function -- map takes in (a value, lowerRange1, upperRange1, lowerRange2, upperRange2) -- if you give it three values it will be based on RGB scale
  //fillColor = color(map(dist, 0, width, 255, 0));
  fillColor = color(map(dist, 0, width, 100, 30), map(dist, 0, width, 20, 100), map(dist, 0, width, 30, 50) );
  fill(fillColor);
  
  //Setting a variable
  int collisionBound = sizeB1/2 + sizeB2/2; 
  if(dist < collisionBound)
  {
    xSpeed1 *= -1;
    ySpeed1 *= -1;
    xSpeed2 *= -1;
    ySpeed2 *= -1;
  }
}

//This custom function takes in the xPos, xSpeed, and size of any ball
//And will reverse its xSoeed if the xPose is out of bounds
//After it reverses the xSpeed, it returns it
float checkBoundaryX(float pos, float speed, int size)  //parameters (names don't matter)
{
  if( pos >= width - size/2 || pos <= 0 + size/2)  //What the parameters do
  {
    speed *= -1;
  }
  return speed;  //Needs a return because it is a float - it will give back the new speed
}

float checkBoundaryY(float pos, float speed, int size)
{
  if (pos >= height - size/2 || pos <= 0 + size/2)
  {
    speed *= -1;
  }
  return speed;
}

float checkDistance(float x1, float y1, float x2, float y2)
{
  float distance = dist (x1, y1, x2, y2);
  return distance;
}
