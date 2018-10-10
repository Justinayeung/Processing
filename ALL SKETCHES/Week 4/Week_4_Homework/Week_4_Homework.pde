//https://processing.org/examples/truefalse.html
//https://processing.org/reference/logicalAND.html

boolean a = false;
boolean b = false;
float angle;

void setup ()
{
  size (600, 600);
  background (0);
  frameRate(5);
}

void draw()
{
  //Calling functions
  fan(angle);
  angle++;
  lines();
  lines2();
  lines3();
  lines4();
  lines5();
  lines6();
}

//Defining functions

void lines()
{
  //for (start condition; stop condition/condition for continuing; an increment)
  //Drawing lines between 5 and 95 with increments of 10
  for (int i = 5; i <= 95; i += 10)
  {
    if ((i > 5) && (i < 95))
    {
      a = true;
    }
    else
    {
      a = false;
    }
    
    if (a == true)
    {
      stroke (50);
      //line (x1, y1, x2, y2)
      //Changing x value
      line (i, 30, i, height-30);
    }
  }
}

void lines2()
{
  //for (start condition; stop condition/condition for continuing; an increment)
  //Drawing lines between 105 and 195 with increments of 10
  for (int i = 5; i <= 195; i += 10)
  {
    if ((i > 105) && (i < 195))
    {
      a = true;
    }
    else
    {
      a = false;
    }
    
    if (a == true)
    {
      stroke (100);
      //line (x1, y1, x2, y2)
      //Changing x value
      line (i, 30, i, height-30);
    }
  }
}

void lines3()
{  
  //for (start condition; stop condition/condition for continuing; an increment)
  //Drawing lines between 205 and 295 with increments of 10
  for (int i = 5; i <= 295; i += 10)
  {
    if ((i > 205) && (i < 295))
    {
      a = true;
    }
    else
    {
      a = false;
    }
    
    if (a == true)
    {
      stroke (150);
      //line (x1, y1, x2, y2)
      //Changing x value
      line (i, 30, i, height-30);
    }
  }
}

void lines4()
{  
  //for (start condition; stop condition/condition for continuing; an increment)
  //Drawing lines between 305 and 395 with increments of 10
  for (int i = 5; i <= 395; i += 10)
  {
    if ((i > 305) && (i < 395))
    {
      a = true;
    }
    else
    {
      a = false;
    }
    
    if (a == true)
    {
      stroke (150);
      //line (x1, y1, x2, y2)
      //Changing x value
      line (i, 30, i, height-30);
    }
  }
}

void lines5()
{  
  //for (start condition; stop condition/condition for continuing; an increment)
  //Drawing lines between 405 and 495 with increments of 10
  for (int i = 5; i <= 495; i += 10)
  {
    if ((i > 405) && (i < 495))
    {
      a = true;
    }
    else
    {
      a = false;
    }
    
    if (a == true)
    {
      stroke (200);
      //line (x1, y1, x2, y2)
      //Changing x value
      line (i, 30, i, height-30);
    }
  }
}

void lines6()
{  
  //for (start condition; stop condition/condition for continuing; an increment)
  //Drawing lines between 505 and 595 with increments of 10
  for (int i = 5; i <= 595; i += 10)
  {
    if ((i > 505) && (i < 595))
    {
      a = true;
    }
    else
    {
      a = false;
    }
    
    if (a == true)
    {
      stroke (250);
      //line (x1, y1, x2, y2)
      //Changing x value
      line (i, 30, i, height-30);
    }
  }
}

//Creating fan object using line and rotation
void fan(float angle)
{
  pushMatrix();
  
  rotate(angle);
  
  //for (start condition; stop condition/condition for continuing; an increment)
  //Drawing line x
  //Start: 0, Continue Condition: < width, increments of 100
  for (int x = 0; x < width; x +=100)
  {
    //Drawing line y
    //Start: 0, Continue Condition: < height, increments of 100
    for (int y = 0; y < height; y += 100)
    {
      //line (x1, y1, x2, y2)
      line(x, y, 10, height-30);
    }
  }
  
  popMatrix();
}
