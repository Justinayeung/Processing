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
  
//  if(d > 600)      ////OR if(d >= width || d <= 0) --then you don't need else
//  {
//     d *= -1; 
//  }
//  else
//  {
//    d += incr;
//  }
//}
//----------------------------------------------------------------------
//Mouse Pressed

//void setup() 
//{
//  size(600, 600);
//  rectMode(CENTER);
//  background(150);
//}

//void draw() 
//{
//  if (mousePressed && mouseX > 200 && mouseX < 400 && mouseY > 200 && mouseY < 400)
//  {
//    background(255);
//  } else {
//    background(150);
//  }

//  rect(width/2, height/2, 200, 200);
//}
//----------------------------------------------------------------------
//Background Change

//boolean a = true;

//void setup() 
//{
//  size(600, 600);
//  background(150);
//}

//void draw()
//{
//}

//void mousePressed()      ////OR use a = !a; and then in draw do the if(a) {background(255);} else {background(150);}
//{
//   if (a == true)
//   {
//     background(255);
//     a = false;
//   }
//   else
//   {
//     background(150);
//     a = true;
//   }
//}
//----------------------------------------------------------------------
//Dots

//void setup() 
//{
//  size(600, 600);
//  background(50);
//  rectMode(CENTER);
//  fill(0);
//  rect(width/2, height/2, 400, 200);
//}

//void draw() 
//{
//  float x = random(100, 500);    ////OR
//  float y = random(200, 400);
//  stroke(255);
//  point(x, y);
//}
//----------------------------------------------------------------------
//Loop

//void setup() 
//{
//  size(600, 600);
//}

//void draw() 
//{
//  for (int i = 1; i < 10; i++) 
//  {
//    for(int j = 1; j < 10; j++)
//    {
//      ellipse(i * 60, j * 60, 50, 50);
//    }
//  }
//}
//----------------------------------------------------------------------
//Array

//float[] pos = new float [100];

//void setup() 
//{
//  size(600, 600);
//}

//void draw() 
//{
//  for (int i = 0; i < pos.length; i += 6) 
//  {
//    rect(pos[i], height/2, 50, 50);      ////OR rect(i * 6, height/1, 50, 50); and i++
//    pos[i] += 6;
//  }
//}
//----------------------------------------------------------------------
//Rotation

//float angle = 0;

//void setup(){
//  size(500,500);
//  noStroke();
//  smooth();
//  ellipseMode(CENTER);
//  background(255);
//}

//void draw()
//{
//  background(255);
  
//  flower(255,3,214,2,angle*5);
//  flower(2,232,255,4,angle);
//  angle += 0.5;
//}

//void flower(int r, int g, int b, int trans, float angle)
//{
//  pushMatrix();
  
//  translate(width/trans, height/trans);
//  rotate(radians(angle));
//  fill(r,g,b,50);
//  ellipse(25, 0, 50, 20);
//  ellipse(-25, 0, 50, 20);
//  rotate(radians(90));
//  ellipse(25, 0, 50, 20);
//  ellipse(-25, 0, 50, 20);
//  rotate(radians(45));
//  ellipse(25, 0, 50, 20);
//  ellipse(-25, 0, 50, 20);
//  rotate(radians(90));
//  ellipse(25, 0, 50, 20);
//  ellipse(-25, 0, 50, 20);
//  ellipse(0,0,20,20);
  
//  popMatrix();
//}
