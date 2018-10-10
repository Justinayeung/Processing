//Extra credit attempt along with Dynamic composition

//Values that are true and false
//Control statements
//Defining a variable
boolean a = true;

//Called one time at the beginning of the program run
void setup()
{
  //Changing rectMode to center instead of the default CORNER
  rectMode (CENTER);
  //Size of canvas
  size (510, 510);
  //Outline of the shape
  stroke (250);
  //Specifies the number of frames to be displayed every second, attempts to refreh 30 times per second
  //Default is 60 frames per second
  frameRate (30);
}

//Called continously of the program run
void draw ()
{
  //THIS WAS ORIGINAL BEFORE ATTEMPTING EXTRA CREDIT
  ////Background color 
  //background (190);
  ////Color of shapes (RGBA)
  //fill (150, 70, 240, 100);
  ////Rect (x, y, width, height);
  //rect (mouseX, mouseY, width/4, height/4);
  ////Arc (x, y, width, height, start, stop);
  //arc (mouseX, mouseX, mouseX, mouseY, -PI, 0);
  
  background (200);
  
  if (a == true)
  {
    //Rect (x, y, width, height);
    rect (mouseX, mouseY, width/4, height/4);
    //Arc (x, y, width, height, start, stop);
    arc (mouseX, mouseX, mouseX, mouseY, -PI, 0);
    //fill color randomized (0, 255) (black to white)
    fill (random(0,255), random(0,255), random(0,255));
  }
}

//I don't think the fill (random(0,255), random(0,255), random(0,255)); is based on the width and height
//I think that part just meants that the color fill would be randomized with the set of colors in RGB (0, 255)
//Is there anyway to set up a color or each coordinate?
//I looked up set ()
//for (int i = 30; i < width-15; i++)
//  {
//    for (int j = 20; j < height-25; j++)
//    {
//      color c = color(204-j, 153-i, 0);
//      set (i, j, c);
//    }
//  }
//But all that did was make a boxed shaped with color
