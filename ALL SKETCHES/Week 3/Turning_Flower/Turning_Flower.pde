float angle;

void setup()
{
  size(500, 500);
  background(255);
  noStroke();
}

void draw()
{
  background(255);
  //This is the function CALL for the flower function
  //Command to do those instructions
  flower(width/2, height/2, 255, 0, 0, angle);
  angle += .1;
  //flower(100, 100, 0, 0, 255, angle);
  //flower(400, 400, 0, 255, 255, angle);
  //flower(random(width), random (height), random(255), random(255), random(255), angle);
}

//This is the function DEFINITION (a set of instructions) for the flower function
//You can add paramaters in your function definition, but you must declare their dataType
void flower(float posX, float posY, float r, float g, float b, float angle)
{
  fill(r, g, b, 100);
 
  pushMatrix();
  
  //Move the grid to the new X and Y position
  translate(posX, posY);
  rotate(angle);
  
  ellipse(0, 0, 50, 50);
  ellipse(0, -50, 25, 100);
  ellipse(0, 50, 25, 100);
  rotate(radians(90));
  ellipse(0, -50, 25, 100);
  ellipse(0, 50, 25, 100);
  rotate(radians(45));
  ellipse(0, -50, 25, 100);
  ellipse(0, 50, 25, 100);
  rotate(radians(90));
  ellipse(0, -50, 25, 100);
  ellipse(0, 50, 25, 100);
  
  popMatrix();
  
  //pushMatrix and popMatrix allows for things to return to original
  //So that the function won't keep overlapping (transitions build up)
}
