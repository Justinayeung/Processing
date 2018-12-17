//Red Line

//void setup()
//{
//  size(600,600);
//  strokeWeight(10);
//  background(255);
//}

//void draw()
//{
//  for (int i = 0; i <= 10; i ++) 
//  {
//    line(0, 59 * i + 5, width, 59 * i + 5);
    
//    if(i % 2 == 1)    //Module for all the odd lines not including the top one
//    {
//      stroke(255, 0, 0);    //stroke color red
//    }
//    else
//    {
//      stroke(0);    //stroke color white
//    } 
    
//    if(i == 10)      //Red line for the top line 
//    {
//      stroke(255, 0, 0);
//    }
//  }
//}

//------------------------------------------------------------
//Gradient

//void setup() 
//{
//  size(600, 600);

//  int i = 0;
//  while (i < width)   //while(--whatever condition(when int i < width)--) for(int i = 0; i < width; i++)
//  {    
//    float r = map(i, 0, width, 0, 255);
//    i++;
    
//    int j = 0;
//    while (j < height) //while(--whatever condition(when int j < height)--) for(int j = 0; j < height; j++)
//    {
//      float g = map(j, 0, height, 0, 255);
//      j++;

//      stroke(r, g, 175);
//      point(i, j);
//    }
//  }
//}

//------------------------------------------------------------
//Triangle Rotation

//void setup() 
//{
//  size(600, 600);
//  rectMode(CENTER);
//  noStroke();
//}

//void draw() 
//{
//  background(50);
//  translate(width/2, height/2);
//  float x = map(mouseX, 0, width, 0, 360);    //mapping mouseX from canvas width to 360(rotation)
//  rotate(radians(x));                         //rotating by radians(x)
//  triangle(0, -100, 50, 100, -50, 100);
//}

//------------------------------------------------------------
//Dist

//void setup() 
//{
//  size(600, 600);
//  background(50);
//  fill(0);
//  ellipse(width/2, height/2, 300, 300);
//}

//void draw() 
//{
//  float x = random(width/2 - 150, width/2 + 150);          //150 = radius -- float x = width/2 (center x) and 150 from that point
//  float y = random(height/2 - 150, height/2 + 150);        //150 = radius -- float y = height/2 (center y) and 150 from that point
//  float d = dist(x, y, width/2, height/2);              //Dist between x and y and the center of ellipse (width/2, height/2)
  
//  if(d < 150)    //White dots will only show if d is < 150
//  {
//    stroke(255);
//    point(x, y);
//  }
//}

//------------------------------------------------------------
//Transformations

//float angle = 0;

//void setup()
//{
//  size(500,500);
//  noStroke();
//  smooth();
//  ellipseMode(CENTER);
//  background(255);
//}

//void draw()
//{
//  background(255);
  
//  //Function Call for flower function
//  flower(255, 3, 214, 400, angle*5);
//  flower(2, 232, 255, width/2, angle);
//  flower(255, 247, 3, 100, angle);
//  angle += 1;
//}

////Defining flower function
//void flower(int r, int g, int b, int trans, float angle)
//{
//  pushMatrix();
  
//  translate(trans,trans);
//  rotate(radians(angle));
  
//  fill(r,g,b,50);
//  ellipse(25, 0, 50, 20);
//  ellipse(-25, 0, 50, 20);
//  rotate(radians(90));          //Add rotation
//  ellipse(25, 0, 50, 20);
//  ellipse(-25, 0, 50, 20);
//  rotate(radians(45));          //Add rotation
//  ellipse(25, 0, 50, 20);
//  ellipse(-25, 0, 50, 20);
//  rotate(radians(90));          //Add rotation
//  ellipse(25, 0, 50, 20);
//  ellipse(-25, 0, 50, 20);
//  ellipse(0,0,20,20);
  
//  popMatrix();
//}

//------------------------------------------------------------
//Scope

//void setup()
//{
//  background(0);
//  fill(0, 255, 255);
//  size(600, 600);
//}

//void draw()
//{
//  //Move the variables so that it is below canvas size
//  //You could also keep the variables as global but define those variables after canvas size
//  float xPos = width/2;
//  float yPos = height/2;
//  float size = width/2;
  
//  ellipse(xPos, yPos, size, size);
//}

//------------------------------------------------------------
//1D Array

//int num = 100;
//int[] x = new int[num];
//int[] y = new int[num];

//void setup() 
//{
//  size(600, 600);
//  noStroke();
//  fill(255, 102);
//}

//void draw() {
//  background(0);
//  // Values are shifted to the right
//  // Shift them to the left instead
//  for (int i = 0; i < num-1; i++) 
//  {
//    x[i] = x[i+1];    //x[i] is equal to the index above it -- shifts all the previous mouseX coordinate up by 1 index place in the array
//    y[i] = y[i+1];    //y[i] is equal to the index above it -- shifts all the previous mouseY coordinate up by 1 index place in the array
//  }

//  // Values are added to the beginning of the array
//  // Add them to the end instead
//  x[num-1] = mouseX;    //Saves the current mouseX at the last index in the array (x[num-1])
//  y[num-1] = mouseY;    //Save the current mouseY at the last index in the array (y[num-1])

//  // Draw the circles
//  for (int i = num-1; i > 0; i--)
//  {
//    //ellipse(x[i], y[i], i/1.1, i/1.1);
//    ellipse(x[i], y[i], i/1.1, i/1.1); 
//  }
//}

//------------------------------------------------------------
//2D Array 1

//int gridW = 15;
//int gridH = 15;

//float[][] sizes = new float[gridW][gridH];
//float[][] colors = new float[gridW][gridH];

//void setup() {
//  size(800, 800);
//  noStroke();
//  for (int i = 0; i < gridW; i++) 
//  {
//    for (int j = 0; j < gridH; j++) 
//    {
//      sizes[i][j] = map(i, 0, gridW, 0, 40);
//      colors[i][j] = map(i, 0, gridW, 0, 255);
//    }
//  }
//}

//void draw() {
//  background(0);
//  for (int i = 0; i < gridW; i++) 
//  {
//    for (int j = 0; j < gridH; j++) 
//    {
//      float w = width/gridW;
//      float h = height/gridH;
//      float xPos = i * width/gridW + w/2;
//      float yPos = j * height/gridH + h/2;

//      fill(colors[i][j] + 50, 0, 0);
//      ellipse(xPos, yPos, sizes[i][j], sizes[i][j]);
//    }
//  }
//}

//------------------------------------------------------------
//2D Array 2

//int rows = 10;
//int columns = 10;
//float w, h;
//float[][] posX = new float[rows][columns];
//float[][] posY = new float[rows][columns];
//boolean[][] Red = new boolean[rows][columns];

//void setup() 
//{
//  size(600, 600);
//  w = width/rows;
//  h = height/columns;
//  for(int r = 0; r < posX.length; r++)
//  {
//    for(int c = 0; c < posX[0].length; c++)
//    {
//      posX[r][c] = c * w;
//      posY[r][c] = r * h;
      
//      if(r < rows/2 && c < columns/2 || r >= rows/2 && c >= columns/2)  //Defining boundaries
//      {
//        Red[r][c] = true;
//      }
//      else
//      {
//        Red[r][c] = false;
//      }
//    }
//  }
//}

//void draw() 
//{
//  for(int r = 0; r < posX.length; r++)
//  {
//    for(int c = 0; c < posX[0].length; c++)
//    {
//      if(Red[r][c] == true)
//      {
//        fill(255, 0, 0);
//      }
//      else
//      {
//        fill(255);
//      }
//      rect(posX[r][c], posY[r][c], w, h);
//    }
//  }
//}

//------------------------------------------------------------
//Trig 1

//int numCircles = 30;
//float angle = 0.0;
//float offset;
//float scalar;
//float speed = 0.05;
//float size;

//void setup() 
//{
// size(600, 600);
// offset = height/2;
// scalar = height/2 - size;
// size = width/numCircles;
// smooth();
//}

//void draw()
//{
// background(0);
 
// for(int i = 0; i < numCircles; i++)
// {
//   float y = offset + sin(angle + 0.2*i) * scalar; 
//   ellipse(size*i + size/2, y, size, size);         //ellipse(x, y, width, height)
// }

// angle += speed;
//}

//------------------------------------------------------------
//Trig 2

//float angle = 0.0;
//float offset;
//float scalar;
//float speed = 0.05;

//void setup() 
//{
//  background(0);
//  size(500, 500);
//  offset = width/2;
//  scalar = width/2 - 100;
//  smooth();
//}
//void draw() 
//{
//  background(0);
//  float x = offset + cos(angle) * scalar;
//  float y = offset + sin(angle) * scalar;
//  ellipse(x, y, 100, 100);
//  angle += speed;
//}

//------------------------------------------------------------
//Vectors

// declare new vectors here
//PVector v1, v2;
//PVector v3, v4;

//void setup() 
//{
//  rectMode(CENTER);
//  size(600,600);
//  v1 = new PVector(50, 50);
//  v2 = new PVector(width-50,50);
//  v3 = new PVector(1, 1);
//  v4 = new PVector(-, 1);

//  // initialize new vectors here
//}

//void draw() 
//{ 
//  v1.add(v3);
//  v2.add(v4);
//  // add vectors 3 and 4 to 1 and 2
  
//  rect(v1.x, v1.y, 100, 100);
//  rect(v2.x, v2.y, 100, 100);
//}
//------------------------------------------------------------
//Objects and Classes 1

//Blob b1;
//Blob b2;

//void setup() {
//  size(600, 600);
//  noStroke();
//  b1 = new Blob(100, 100, 150, 0);
//  b2 = new Blob(width/2, height/2, 200, 0);
//}

//void draw() {
//  background(0);
//  b1.display();
//  b2.display();
//}
//------------------------------------------------------------
//Objects and Classes 2

//ArrayList<Ball> bounce = new ArrayList<Ball>();
//int balls = 5;

//void setup()
//{
//  size(600, 600);
//  for(int i = 0; i < balls; i++)
//  {
//    //Ball(float s)
//    bounce.add(new Ball(random(20, 150)));
//  }
//}

//void draw()
//{
//  background(0);
//  for(Ball b : bounce)
//  {
//    b.checkBoundaries();
//    b.display();
//    b.move();
//  }
//}
