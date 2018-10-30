//Shrink and Grow

//float d = 100;
//float incr = 5;

//void setup() 
//{
//  size(600, 600);
//}

//void draw() 
//{
//  background(150);
//  ellipse(width/2, height/2, d, d);
  
//  if(d >= width)
//  {
//    d *= -1;
//  }
//  d += incr;  
//}
//---------------------------------------------------------
//Bounce Ball

//int xPos;
//int incr = 5;
//int d = 150;
//int r = d/2;

//void setup()
//{
//  background(0);
//  size(600,600);
//  xPos = width/2;
//}

//void draw()
//{
//  background(0);
//  ellipse(xPos,height/2,d,d);
//  xPos += incr;
  
//  if(xPos > width - r || xPos < 0 + r)
//  {
//    incr *= -1;
//  }
//}
//---------------------------------------------------------
//Mouse Pressed

//void setup() 
//{
//  size(600, 600);
//}

//void draw() 
//{
//  background(150);
  
//  float d = dist(width/2, height/2, mouseX, mouseY);
//  if (mousePressed && d <= 100)   //100 = radius
//  {
//    fill(255);
//  } 
//  else 
//  {
//    fill(150);
//  }

//  ellipse(width/2, height/2, 200, 200);
//}
//---------------------------------------------------------
//Mouse Over

//void setup() 
//{
//  size(600, 600);
//  noStroke();
//}

//void draw() 
//{
//  if (mouseX < width/2 && mouseY < height/2) 
//  {
//    fill(255);
//  } 
//  else 
//  {
//    fill(229, 107, 107);
//  }
//  rect(0, 0, width/2, height/2);

//  if (mouseX < width/2 && mouseY > height/2) 
//  {
//    fill(255);
//  } 
//  else 
//  {
//    fill(107, 229, 107);
//  }
//  rect(0, height/2, width/2, height/2);
  
//  if(mouseX > width/2 && mouseY < height/2)
//  {
//    fill(255);
//  }
//  else
//  {
//    fill(69, 114, 234);
//  }
//  rect(width/2, 0, width, height/2);
  
//  if(mouseX > width/2 && mouseY > height/2)
//  {
//    fill(255);
//  }
//  else
//  {
//    fill(255, 253, 106);
//  }
//  rect(width/2, height/2, width, height);
//}
//---------------------------------------------------------
//Value 'on'

//float bgColor = 0;
//boolean on = false;

//void setup() 
//{
//  size(600, 600);
//}

//void draw() 
//{
//  background(bgColor);

//  if (on) 
//  {
//    bgColor = 255;
//  } 
//  else 
//  {
//    bgColor = 0;
//  }
//}

//void mousePressed() 
//{
//  on = !on;
//}
//---------------------------------------------------------
//Random White Dots

//void setup() 
//{
//  size(600, 600);
//  background(50);
//  fill(0);
//  ellipse(width/2, height/2, 300, 300);
//}

//void draw() 
//{
//  float x = random(width/2 - 150, width/2 + 150);  
//  float y = random(height/2 - 150, height/2 + 150);    
//  float d = dist(x, y, width/2, height/2);
  
//  if(d < 150)
//  {
//    stroke(255);
//    point(x, y);
//  }
//}
//---------------------------------------------------------
//Nested loop

//void setup() 
//{
//  size(600, 600);
//}

//void draw() {
//  for (int i = 1; i < 10; i++) 
//  {
//    for (int j = 1; j < 10; j++) 
//    {
//      ellipse(i * 60, j * 60, 50, 50);
//    }
//  }
//}
//---------------------------------------------------------
//Gradient

//void setup() 
//{
//  size(600, 600);
//  for (int i = 0; i < width; i++) 
//  {
//    for (int j = 0; j < height; j++) 
//    {
//      float r = map(i, 0, width, 0, 255);    ////what was done before == float r = map(i/5, 0, 255, 0, width);
//      float g = map(j, 0, height, 0, 255);    ////what was done before == float g = map(j/5, 0, 255, 0, height);
//      stroke(r, g, 175);
//      point(i, j);
//    }
//  }
//}
//---------------------------------------------------------
//Continuous Circles

//int yPosition;

//void setup() 
//{
//  size(600, 600);
//  yPosition = height/2;
//}

//void draw() 
//{ 
//  yPosition += 10;
   
//  ellipse(width/2, yPosition, 100, 100);
 

//  if (yPosition > height + 100 || yPosition < 0 -100) 
//  {
//    yPosition = 0 - 100;
//  } 
//}
//---------------------------------------------------------
//Rect Position

//void setup() 
//{
//  size(600, 600);
//  rectMode(CENTER);
//}

//void draw() 
//{
//  background(80);
//  noStroke();
//  rect(mouseX, mouseY, 100, 100);
//}
//---------------------------------------------------------
//Rotate

//float angle1 = 0;
//float angle2 = 0;

//void setup() 
//{
//  size(600, 600);
//  rectMode(CENTER);
//}

//void draw() 
//{
//  background(150);
//  fill(40);
//  stroke(220);

//  angle1 += 1;
//  angle2 -= 2;

//  translate(300, 300);
//  rotate(radians(angle1));
//  rect(0, 0, 100, 100);

//  translate(150, 150);
//  rotate(radians(angle2));
//  rect(0, 0, 50, 50);
//}
//---------------------------------------------------------
//100 Ellipse Array

//float[] pos = new float[100];

//void setup() 
//{
//  size(600, 600);
//}

//void draw() 
//{
//  background(240);
//  for (int i = 0; i < pos.length; i++) 
//  {
//    ellipse(width/2, i * 6, 50, 50);
//  }
//}
//---------------------------------------------------------
//Array Target

//float[] pos = new float[10];

//void setup() 
//{
//  size(600, 600);
//}

//void draw() 
//{
//  background(240);
//  for (int i = pos.length-1; i > 0; i--) 
//  {
//    ellipse(width/2, height/2, i*60, i*60);
//  }
//}
//---------------------------------------------------------Extra Credit
//10 Rectangle Loop

//int x = 15;

//void setup() 
//{
//  background(150);
//  size(600, 600);
//  noStroke();
//}

//void draw() 
//{
//  for (int i = 0; i < 10; i++) 
//  {
//    rect(x, 150, 30, 300);
//    x += 60;
//  }
//}
//---------------------------------------------------------Extra Credit
//X Movement Triangle

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
//  float x = map(mouseX, 0, 600, 0, 360);      //float angle = map(mouseX, 0, width, radians(0), radians(360));
//  rotate(radians(x));                         //rotate(angle);
//  triangle(0, -100, 50, 100, -50, 100);
//}
//---------------------------------------------------------Extra Credit
//Array Grid Change

//int gridW = 10;
//int gridH = 10;
//float[][] greyColors = new float[gridW][gridH];

//void setup() 
//{
//  size(600, 600);
//  for (int i = 0; i < gridW; i++) 
//  {
//    for (int j = 0; j < gridH; j++) 
//    {
//      greyColors[i][j] = map(j * gridW + i, 0, gridW * gridH, 0, 255);
//    }
//  }
//}

//void draw() 
//{
//  for (int i = 0; i < gridW; i++)
//  {
//    for (int j = 0; j < gridH; j++) 
//    {
//      greyColors[i][j] += 1;
//      fill(greyColors[i][j]);
//      rect(i * 60, j * 60, width/gridW, height/gridH);
      
//      if(greyColors[i][j] >= 255)
//      {
//        greyColors[i][j] = 0;
//        greyColors[i][j] += 1;
//        fill(greyColors[i][j]);
//        rect(i * 60, j * 60, width/gridW, height/gridH);
//      }
//    }
//  }
//}
