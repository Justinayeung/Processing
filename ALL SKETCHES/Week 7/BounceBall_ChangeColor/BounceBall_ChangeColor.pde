int x;      //x position
int y;      //y position
int x1;     //x1 position
int y1;     //y1 position
int diam;        //diameter variable
int radius;      //radius variable
int xSpeed;      //xSpeed variable
int ySpeed;      //ySpeed variable
int xSpeed1;      //xSpeed1 variable
int ySpeed1;      //ySpeed1 variable
Boolean colorSwitch = true;      //Colorswitch boolean
Boolean insideColor = true;     //insideColor boolean

void setup()
{
  size(600, 600);      //Size
  x = width/2;         //Start position center
  y = height/2;        //Start position center
  x1 = 500;            //Starting x = 100
  y1 = 100;            //Starting y = 100
  diam = 100;          //Diameter = 100
  radius = diam/2;     //Radius = 50
  xSpeed = 4;          //xSpeed = 4
  ySpeed = 6;          //ySPeed = 6
  xSpeed1 = -7;         //xSpeed = -7
  ySpeed1 = -10;        //ySpeed = -10
  noStroke();          //No outline
}

void draw()
{
  x += xSpeed;      //x position increases by xSpeed
  y += ySpeed;      //y position increases by ySpeed
  x1 += xSpeed1;    //x1 position increases by xSpeed1
  y1 += ySpeed1;    //y1 position increases by ySpeed1
  
  if (colorSwitch)    //if colorSwitch = true
  {
    background(133, 207, 252);    //then background = green
    insideColor = false;          //insideColor boolean = false
  }
  else 
  {
    background(238, 252, 133);    //if !true then background = blue
    insideColor = true;            //insideColor boolean = true
  }
  
  if(insideColor)    //if insideColor = true
  {
    fill(133, 207, 252);    //then background = green 
  }
  else
  {
    fill(238, 252, 133);    //if !false then background = blue
  }
  
  if (x > width - radius || x < radius)    //Boundary x
  {
    xSpeed *= -1;    //Reverses direction
    colorSwitch = !colorSwitch;    //Reverses the boolean
  }

  
  if (y > height - radius || y < radius)    //Boundary y
  {
    ySpeed *= -1;    //Reverses direction
    colorSwitch = !colorSwitch;    //Reverses the boolean
  }

//------------------second circle---------------------------

if (x1 > width - 25 || x1 < 25)    //Boundary x
  {
    xSpeed1 *= -1;    //Reverses direction
    colorSwitch = !colorSwitch;    //Reverses the boolean
  }

  
  if (y1 > height - 25 || y1 < 25)    //Boundary y
  {
    ySpeed1 *= -1;    //Reverses direction
    colorSwitch = !colorSwitch;    //Reverses the boolean
  }
  
  ellipse(x, y, diam, diam);        //ellipse(x1, y1, width, height) --width, height = 100(diameter)
  ellipse(x1, y1, radius, radius);  //ellipse(x1, y1, width, height) --width, height = 50(radius)
}
