float rain1 = random(0, 1);
float rain2 = random(100, 200);
float rain3 = random(50, 100);
float angle;                      //Variable for blade();
float angle2;                     //Variable for blade2();
float a;                          //Variable for rain();

void setup()
{
  size (1000, 1000);
  background(80, 100, 150);
  noStroke();              //no outlines
  ellipseMode(CORNER);     //https://processing.org/reference/ellipseMode_.html
  frameRate(20);
}

//https://processing.org/tutorials/transform2d/ __ for reference

void draw()
{
  turbine(0, 0, 0);                         //calling turbine function
  rain(255, 255, 255, 150);                 //calling rain function
}

//rain has to be given an rgba in draw()
void rain(float r, float g, float b, float a)
{
  //pushMatrix and popMatrix allows for things to return to original
  pushMatrix();
  
  //rgba has to be set in draw()
  fill (r, g, b, a);
  
  //rain sizes and rotation
  rect(random(0, 1000), random(0, 1000), rain1, rain2);
  rect(random(0, 1000), random(0, 1000), rain1, rain3);
  rotate(radians(10));
  rect(random(0, 1000), random(0, 1000), rain1, rain2);
  rect(random(0, 1000), random(0, 1000), rain1, rain3);
  rotate(radians(-20));
  rect(random(0, 1000), random(0, 1000), rain1, rain2);
  rect(random(0, 1000), random(0, 1000), rain1, rain3);
  
  popMatrix();
}

//turbine has to be given an rgb in draw()
void turbine(float r, float g, float b)
{ 
  //background here so that you don't see previous rotations
  background (80, 100, 150);
  fill(r, g, b, 100);
  
  //wind turbine platform
  rect(0, 930, 600, 100);
  
  //calling blade and blade2 function
  blade(710, 510, angle);
  angle += .1;
  blade2(260, 310, angle2);
  angle2 += .15;
}

//blade has to be given a posX, posY and angle in turbine
void blade(float posX, float posY, float angle)
{
  //save and restore coordinate system
  pushMatrix();
  
  //pole/circular top of wind turbine
  //rect(x, y, width, height);
  //ellipse(x, y, width, height);
  rect(700, 500, 18, 630);
  ellipse(690, 490, 40, 40);
  
  translate(posX, posY);
  rotate(angle);

  //blades
  rotate(radians(70));
  ellipse(0, 0, 20, 200);
  rotate(radians(100));
  ellipse(0, 0, 20, 200);
  rotate(radians(130));
  ellipse(0, 0, 20, 200);
  
  popMatrix();
}

//blade2 has to be given a posX, posY and angle2 in turbine
void blade2(float posX, float posY, float angle2)
{
  //save and restore coordinate system
  pushMatrix();
  
  //pole/circular top of wind turbine
  //rect(x, y, width, height);
  //ellipse(x, y, width, height);
  rect(250, 300, 18, 630);
  ellipse(240, 290, 40, 40);
  
  translate(posX, posY);
  rotate(angle2);
  
  //blades
  rotate(radians(70));
  ellipse(0, 0, 20, 200);
  rotate(radians(100));
  ellipse(0, 0, 20, 200);
  rotate(radians(130));
  ellipse(0, 0, 20, 200);
  
  popMatrix();
}
