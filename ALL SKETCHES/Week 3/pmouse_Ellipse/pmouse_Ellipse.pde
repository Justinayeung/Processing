int ellipSize1;
int ellipSize2;

//Setup function is called once at the beginning of the program run
//Your program
void setup()
{
  size(500, 500);
  ellipSize1 = width/2;
  ellipSize2 = width/2;
  //Determines how often the draw function runs
  //per second (freq)
  frameRate(5);
  fill (0, 255, 255, 50);
}

//Draw function is called continously throughout the program run (based on frameRate)
//frameRate determines the frequency
void draw()
{
  ////Ellipse 1
  //ellipse (width/4, height/2, ellipSize1, ellipSize1);
  //ellipSize1 -= 10;
  //println("Size of ellipse 1: " + ellipSize1);
  
  ////Ellipse 2
  //ellipse (3 * width/4, height/2, ellipSize2, ellipSize2);
  //ellipSize2 += 10;
  //println("Size of ellipse 2: " + ellipSize2);
  
  ////Ellipse 3
  ////Grows based on the framCount
  //ellipse(width/2, height/3, frameCount, frameCount);
  //println(frameCount);
  
  ellipse(mouseX, mouseY, 50, 50);
  println("Mouse x: " + mouseX);
  println("Mouse y: " + mouseY);
  
  fill (255, 0, 255, 50);
  ellipse(pmouseX, pmouseY, 30, 30);
  println("PMouse x: " + pmouseX);
  println("PMouse y: " + pmouseY);
  
  //ellipSize += ___ ;
  //ellipSize -= ___ ;
  //Ellipse gets bigger because they take the absolute value
}
