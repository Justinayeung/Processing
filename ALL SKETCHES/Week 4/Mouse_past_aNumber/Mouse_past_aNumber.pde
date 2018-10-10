//void setup()
//{
//  size(500, 500);
//  fill(255, 0, 0);
//  background(255);
//}

//void draw()
//{
  ////For loop
  ////for(start condition; stop condition/condition for continuing; an increment)
  //for(int yCord = 0; yCord<500; yCord += 100) 
  //{
  //  for(int xCord = 0; xCord<500; xCord += 100)
  //  {
  //    rect(xCord, yCord, 100, 100);
  //    println("xCord: " + xCord, "   yChord: " + yCord);
  //  }
  //}
  
  //Above (for(int xCord = 0; xCord<500; xCord += 100))is a shorthand way of creating
  //rect(0, 0, 100, 100);
  //rect(100, 0, 100, 100);
  //rect(200, 0, 100, 100);
  //rect(300, 0, 100, 100);
  //And so on

  //for(int j = 0; j<5; j++)
  //{
  //  for(int i = 0; i<5; i++)
  //  {
  //    println("Hello");
  //    println(i);
  //    //fill(50*i);   //fill(0) --> fill(50) --> fill(100) --> (150) etc...
  //    fill(50*i, 50*j, 0);
  //    rect(100 * i, 100*j, 100, 100);
  //  }
  //}
//}





void setup()
{
  size(500, 500);
  background(0);
}

void draw()
{
  //Changing the background color
  //if will get brighter as the mouse moves to the right in increments of 100
  //First 'if' statement
  if(mouseX < 100)
  {
    println("Mouse is less than 100");
    background(0);
  }
  else
  if(mouseX > 100 && mouseX < 200)
  {
    println("Mouse is past 100");
    background(50);
  }
  else if(mouseX > 200 && mouseX < 300)
  {
    println("Mouse is past 200");
    background(100);
  }
  else if(mouseX > 300 && mouseX < 400)
  {
    println("Mouse is past 300");
    background(150);
  }
  else
  {
    println("Mouse is past 400");
    background(200);
  }
  
  //Second 'if' statement
  //If you start an 'if' statement separately it will check it separately
  //if(true)
  //{
  //  println("This is still true");
  //}
}
