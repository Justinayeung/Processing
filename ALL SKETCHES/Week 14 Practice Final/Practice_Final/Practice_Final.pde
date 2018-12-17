//-------------------------------------------------------------------------
//CLASS INFORMATION
//-------------------------------------------------------------------------
//Scope

//Global ------> Local

//int s = 0;    //Global
//void draw()
//{
//  //Local
//  int incr = determineIncr(1);
//  s += incr;
//}

//int determineIncr(int n)
//{
//  //Local
//  int incr = n + 10;
//  return incr;
//}

//-------------------------------------------------------------------------
//Modulo/2D Arrays

//5 % 2 = 1      //Remainder = 1 ----> odd number
//if(i % 2 == 1)
//{
//  boolean isOdd = true;
//}

//EX: You can use this when doing checkboard stuff (odd = black) (even = white)

//Defining variables
//int rows, cols, h, w;
//int posX [][];      //2D Array for posX
//int posY [][];      //2D Array for posY

//void setup()
//{
//  size(600, 600);
//  rows = height/100;
//  cols = width/100;
//  w = width/rows;
//  h = height/cols;
//  posX = new int [rows][cols];    //Defining posX
//  posY = new int [rows][cols];    //Defining posY
  
//  for (int r = 0; r < rows; r++)    //Loop for rows and cols
//  {
//    for(int c = 0; c < cols; c++)
//    {
//      posX[r][c] = w*c;    //posX = width * cols
//      posY[r][c] = h*r;    //posy = height * rows
//    }
//  }
//}

//void draw()
//{
//  for (int r = 0; r < rows; r++)    //Drawing rectangle
//  {
//    for(int c = 0; c < cols; c++)
//    {
//      if(c % 2 == 0 && r % 2 == 0)
//      {
//        fill(100, 0, 50);
//      }
//      else
//      {
//        fill(150, 0, 100);
//      }
      
//      if(c % 2 != 0&& r % 2 != 0)
//      {
//        fill(100, 0, 50);
//      }
      
//      rect(posX[r][c], posY[r][c], w, h);    //rect(x, y, width, height);
//    }
//  }
//}

//-------------------------------------------------------------------------
//Class

//Dot d1;

//void setup()
//{
//  size(600, 600);
//  d1 = new Dot(width/2, height/2);
//}

//void draw()
//{
//  d1.display();
//  d1.x = mouseX;
//  d1.y = mouseY;
//}

//-------------------------------------------------------------------------
//Vectors

//Vectors have a magnitude and a direction
//PVector location = has a location.x and a location.y

//float x, y, xSpeed, ySpeed;    //Without vectors

//Mover m1;

//void setup()
//{
//  size(600, 600);
//  m1 = new Mover();
//}

//void draw()
//{
//  background(0);
//  m1.checkBoundaries();
//  m1.display();
//  m1.move();
//}






//-------------------------------------------------------------------------
//FINAL PRACTICE
//-------------------------------------------------------------------------
//--While-- loop to --for-- loop

//void setup() 
//{
//  size(600,600);
//}

//void draw() 
//{
//  int i = 0;
//  while (i < 100)     //while(--whatever condition--) {it will continue the loop}
//  {
//    line(i * 6, 0, i * 6, height);
//    i++;
//  }
//}

//void setup() 
//{
//  size(600,600);
//}

//void draw() 
//{
//  for (int i = 0; i < 100; i++) 
//  {
//    line(i * 6, 0, i * 6, height);
//  }
//}

//-------------------------------------------------------------------------
//Array 1

//int gridW = 20;
//int gridH = 20;

//float[][] angles = new float[gridW][gridH];
//float[][] rotateAngles = new float[gridW][gridH];

//void setup() 
//{
//  size(800, 800);
//  stroke(255);
//  for (int i = 0; i < gridW; i++) 
//  {
//    for (int j = 0; j < gridH; j++) 
//    {
//      angles[i][j] = map(i, 0, gridW, 0, 180);
//      rotateAngles[i][j] = random (1, 5);      //Giving random value of rotation
//    }
//  }
//}

//void draw() 
//{
//  background(0);

//  for (int i = 0; i < gridW; i++) 
//  {
//    for (int j = 0; j < gridH; j++) 
//    {
//      pushMatrix();
//      translate(i * width/gridW, j * height/gridH);
//      angles[i][j] += rotateAngles[i][j];    //Seting angles[i][j] to equal the rotation
//      rotate(radians(angles[i][j]));
//      line(-width/gridW*0.5, 0, width/gridW*0.5, 0);
//      popMatrix();
//    }
//  }
//}

//-------------------------------------------------------------------------
//Array 2

//int gridW = 10;
//int gridH = 10;

//boolean[][] isRed = new boolean[gridW][gridH];
//float[][] size = new float[gridW][gridH];

//void setup() {
//  size(800, 800);
//  noStroke();
//  for (int i = 0; i < gridW; i++) 
//  {
//    for (int j = 0; j < gridH; j++) 
//    {
//      size[i][j] = map(i, 0, gridW, 0, 50);  //Changes the sizes
      
//      if (i >= gridW/2 && j >= gridH/2) 
//      {
//        isRed[i][j] = true;
//      } 
//      else
//      {
//        isRed[i][j] = false;
//      }
//    }
//  }
//}

//void draw() {
//  background(0);
//  for (int i = 0; i < gridW; i++) 
//  {
//    for (int j = 0; j < gridH; j++) 
//    {
//      if (isRed[i][j] == true) 
//      {
//        fill(200, 0, 0);
//      } 
//      else 
//      {
//        fill(200, 200, 200);
//      }

//      float w = width/gridW - size[i][j];    //Decreases as the grid continues
//      float h = height/gridH - size[i][j];   //Decreases as ghe grid continues
//      float xPos = i * width/gridW + w/2;    //Xposition of each ellipse
//      float yPos = j * height/gridH + h/2;   //Yposition of each ellipse

//      ellipse(xPos, yPos, w, h);
//    }
//  }
//}

//-------------------------------------------------------------------------
//Rose Objects

//Rose rose1 = new Rose(3, 8, 100);
//Rose rose2 = new Rose(3, 7, 100);
//Rose rose3 = new Rose(2, 7, 100);

//void setup() 
//{
//  background(51);
//  size(600, 600);
//}

//void draw() 
//{
//  rose1.display(width/2 - 200, height/2);
//  rose2.display(width/2, height/2);
//  rose3.display(width/2 + 200, height/2);
//}
