//Shrink/Grow

//float d = 100;
//float incr = 5;

//void setup() 
//{
//  size(600, 600);
//}

//void draw() 
//{
//  background(150);

//  // ellipse 1
//  ellipse(width/1.5, height/1.5, 150, 150);

//  // ellipse 2
//  ellipse(width/2.5, height/2.5, d, d);
//  if(d >= 300)
//  {
//    d *= -1;
//  }
//  else
//  {
//    d += incr;  
//  }
//}
//-------------------------------------------------------------
//Color change

//void setup() 
//{
//  size(600, 600);
//  noStroke();
//}

//void draw() 
//{
//  Rect1();
//  Rect2();
  
//  fill(255);
//  rect(0, height/2, width/2, height/2);
//  rect(width/2, 0, width/2, height/2);
//}

//void Rect1()
//{
//  fill(0);
//  if(mouseX > 0 && mouseX < width/2 && mouseY > 0 && mouseY < height/2)
//  {
//    fill(255, 0, 0);
//  }
//  rect(0, 0, width/2, height/2);
//}

//void Rect2()
//{
//  fill(0);
//  if(mouseX > 0 && mouseX > width/2 && mouseY > 0 && mouseY > height/2)
//  {
//    fill(255, 0, 0);
//  }
//  rect(width/2, height/2, width/2, height/2);
//}
//-------------------------------------------------------------
//Diagonal Gradient

//void setup() 
//{
//  size(600, 600);
//  for (int i = 0; i < width; i++) 
//  {
//    for (int j = 0; j < height; j++) 
//    {
//      float r = map(i/5, 0, 255, 0, width);    //OR -- map(i, 0, 1500, 0, width);
//      float b = map(j/5, 0, 255, 0, height);   //OR -- map(j, 0, 1500, 0, height);
//      stroke(r, 0, b);
//      point(i, j);
//    }
//  }
//}
//-------------------------------------------------------------
//Nested Loop

//void setup() 
//{
//  size(600, 600);
//}

//void draw() 
//{
//  for(int i = 0; i < 600; i+= 60)
//  {
//    for(int j = 0; j < 600; j += 60)
//    {
//      rect(i,j,60,60);
//    }
//  }
//}
//-------------------------------------------------------------
//Array

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
