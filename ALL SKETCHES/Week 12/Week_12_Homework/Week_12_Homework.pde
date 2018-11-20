//Window Pattern

//int rows = 11;
//int columns = 11;
//float w, h;
//float[][] posX = new float[rows][columns];
//float[][] posY = new float[rows][columns];


//void setup() 
//{
//  size(600, 600);
//  w = width/columns;
//  h = height/rows;
  
//  for(int r = 0; r < posX.length; r++)
//  {
//    for(int c = 0; c < posX[0].length; c++)
//    {
//      posX[r][c] = c * w;    //Array posX = columns * width
//      posY[r][c] = r * h;    //Array posY = rows * height
//    }
//  }
//}

//void draw() 
//{
//  //Looping for grid
//  for(int r = 0; r < posX.length; r++)
//  {
//    for(int c = 0; c < posX[0].length; c++)
//    {
//      //Fill all rect black
//      fill(0);
      
//      //IN CLASS
//      //fill(255, 255, 0)
      
//      //if(r == 0 || r == posX.length-1 || c == 0 || c == posX[0].length-1 || c == posX[0].length/2 || r == posX.length/2)
//      //{
//      //  fill(0);
//      //}
      
//      //OR-------------------------------------
        
//      //Defining boundaries for each yellow square
//      //Top Left Square
//      if(posX[r][c] >= 50 && posX[r][c] <= 250 && posY[r][c] >= 50 && posY[r][c] <= 250)
//      {
//        fill(255, 255, 0);
//      }
      
//      //Top Right Square
//      if(posX[r][c] >= 300 && posX[r][c] <= 500 && posY[r][c] >= 50 && posY[r][c] <= 250)
//      {
//        fill(255, 255, 0);
//      }
      
//      //Bottom Left Square
//      if(posX[r][c] >= 50 && posX[r][c] <= 250 && posY[r][c] >= 300 && posY[r][c] <= 500)
//      {
//        fill(255, 255, 0);
//      }
      
//      //Bottom Right Square
//      if(posX[r][c] >= 300 && posX[r][c] <= 500 && posY[r][c] >= 300 && posY[r][c] <= 500)
//      {
//        fill(255, 255, 0);
//      }

//      rect(posX[r][c], posY[r][c], w, h);
//    }
//  }
//}

//----------------------------------------------------------------------------
//Ellipse

//Defining variables
//float angle = 0.0;
//float offset, scalar, size;
//float speed = 0.1;

//void setup() 
//{
//  background(0);    //Background color = black
//  size(500, 500);   //Size of canvas
//  offset = width/2;    //Offset = center
//  size = 10;    //size of ellipse
//  scalar = width/2 - size/2;    //Position of ellipse drawn
//  noStroke();
//}
//void draw() 
//{
//  float x = offset + cos(angle) * scalar;    //x position = center + cos(angle) (cos = a/h - usually starts at -1 or 1) * the position
//  float y = offset + sin(angle) * scalar;    //y position = center + sin(angle) (sin = o/h - usually starts at 0) * the position
//  fill(scalar, 255, 255, 100);     //The fill color
//  ellipse(x, y, size, size);
//  angle += speed;    //Rate of spin (if you multiple by 10 the pattern turns into a flower)
//  fill(scalar, scalar, scalar, 100);    //The transparency
  
//  scalar -= 0.5;    //scalar decreases meaning the circle will decrease
//}

//----------------------------------------------------------------------------
//Snake

//Defining variables
//float x[] = new float[100];  //Array
//float angle;  
//float rate;
//float amplitude;

//void setup() 
//{
//  size(700, 700);    //Canvas size
//  noStroke();

//  angle = 0;    //angle = 0
//  amplitude = 250;  
//  rate = 0.3;    //How fast it oscillates
//}

//void draw() 
//{
//  background(255);
//  noStroke();
//  angle += rate;
//  for (int i = 0; i < x.length; i++) 
//  {
//    x[i] = width/2 + cos((angle + i) * 0.05) * amplitude;    //What the array equals to (the path)
//    fill(map(i, 0, x.length, 0, 230));    //The fill color (gradient)
//    float siz = map(i, 0, x.length, 10, 70);    //The decreasing size of ellipse
//    float yPos = map(i, 0, x.length, 0 + siz, height - siz);    //The y Position of the ellipse
//    ellipse(x[i], yPos, siz, siz);    //Ellipse (x, y, width, height);
    
//    //ellipse(yPos, x[i], siz, siz);
//    //Thought about just increase the x[i] position
//    //x[i] += 10;
    
//    //It has somthing to do with sin((angle + i) * 0.1
//    //When I changed 0.1 to 20 then it changed the spacing between each ellipse
//    //When I did angle + i + amplitude it didn't change the oscillation
//    //angle += rate so angle is equal to how fast it oscillates
//    //I changed the width/2 to equal amplitude and has amplitude++ but the ellipses just went out of the canvas
//  }
//}
