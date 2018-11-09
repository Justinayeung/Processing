////I tried implementing speed and boundarys like how we did for bounceball but the ellipses still wouldn't move 

//int COLS_NUM = 30;    //# of columns
//int ROWS_NUM = 30;    //3 of rows

//float[][] posx = new float[COLS_NUM][ROWS_NUM];
//float[][] posy = new float[COLS_NUM][ROWS_NUM];

////float space;

//void setup() 
//{
//  size(600, 600);

//  float xStepAmount = (width-200)/(posx.length - 1);        //amt = (600-200)/(30-1) = 400/29    posx.length = cols_num
//  float yStepAmount = (height-200)/(posx[0].length - 1);    //amt = (600-200)/(30-1) = 400/29    posx[0].length = rows_num
  
//  for (int i = 0; i < posx.length; i++)
//  {
//    for (int j = 0; j < posx[0].length; j++) 
//    {
//      posx[i][j] = 100 + i * xStepAmount;      //grid (x values)
//      posy[i][j] = 100 + j * yStepAmount;      //grid (y values)
//    }
//  }
  
//  //space = random(1,5);
//  strokeWeight(5);
//  stroke(255);
//}

//void draw() 
//{
//  background(5);

//  //Color 
//  for (int i = 0; i < posx.length; i++)   //Tried doing i += space and j += space but it only changed the spacing when pressing play
//  {
//    for (int j = 0; j < posx[0].length; j++) 
//    {
//      //map(value, start1, stop1, start2, stop2);  
//      float r = map(i,0,posx.length,0,255);    //value i from 0, posx.length, and change that to 0, 255
//      float g = map(j,0,posx[0].length,0,255);    //value j from 0, posx.length, and change that to 0, 255
      
//      float dist = (dist(mouseX, mouseY, posx[i][j], posy[i][j]));
//      float b = map(dist, 0, 100, 0, 255);
//      stroke(r,g,b);
//      point(posx[i][j], posy[i][j]);    //Drawing poins based on coordinates
//      posx[i][j] += random(-1.5, 1.5);
//      posy[i][j] += random(-1.5, 1.5);
//    }
//  }
//}
//-------------------------------------------------------------------
int num = 100;
float[] xPositions = new float[num];    //Array size for xPositions = 50
float[] yPositions = new float[num];    //Array size for yPositions = 50
color[] colors = new color[num];

void setup() 
{
  size(600, 600);
  background(100);
  for (int i = 0; i < xPositions.length; i++)     //i++ if less then array length
  {
    xPositions[i] = random(-100, width);
    yPositions[i] = random(-100, height);
    colors[i] = color(random(0, 255), random(0, 255), random(0, 255), random(0, 255));
  }
}

void draw()
{ 
  for(int i = 0; i < xPositions.length; i++)
  {
    rect(xPositions[i], yPositions[i], 30, 30);
    fill(colors[i]);
   
    float rand = random(-1, 1);
    
    if(rand >= 0)
    {
      xPositions[i] += 8;
    }
    else
    {
      yPositions[i] += 6;
    }
    
    if(xPositions[i] > width || yPositions[i] > height)
    {
      xPositions[i] = random(-100, width);
      yPositions[i] = random(-100, height);
    }
  }
}
