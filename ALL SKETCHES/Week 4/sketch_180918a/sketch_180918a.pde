//int angle;

void setup()
{
  size(600, 600);
  background(255);
  rectMode(CENTER);
}

void draw()
{
  //background(255);
  
  ////PushMatix() and popMatrix() isolates whats inside
  //pushMatrix();
  //translate(width/2, height/2);
  //popMatrix();
  
  //rotate(radians(angle));
  //fill(0, 255, 0);
  //rect(0, 0, width, height);
  
  //fill(0);
  //rect(0, 0, 100, 100);

  //angle ++;
  
  background(255);
  //smiley(random(width), random(height));
  //function call
  //smiley(width/2, height/2, random(5, 45));
  
  //Row 1
  //For loop
  //i = index for how many times it goes through the loop
  //Hightlight and press TAB to tab everything
  for(int i = 0; i<5; i += 2)
  {
     smiley(100 + 100 * i, 100, 1);
     println(i);
  }
  ////Row 2
  //smiley(100, 300, 1);
  //smiley(300, 300, 1);
  //smiley(500, 300, 1);
  
  ////Row 3
  //smiley(100, 500, 1);
  //smiley(300, 500, 1);
  //smiley(500, 500, 1);
}

//function definition
void smiley(float x, float y, float eyeSize)
{
  //Smiley head
  fill(255, 255,0);
  ellipse(x, y, 200, 200);
  
  //Smiley left eye
  fill(0);
  ellipse(x-30, y, eyeSize, eyeSize);
  
  //Smiley right eye
  fill(0);
  ellipse(x+30, y, eyeSize, eyeSize);
  
  //Smiley mouth
  rect(x, y+40, 60, 10);
}
