//This is calling the "size" function and passing it 
//x and y values for width and height
//size (500, 500);


//triangle (top left (0, 0) top right (500, 0) bottom left (0, 500)
//triangle (x1, y1, x2, y2, x3, y3);
//triangle (0, 0, 500, 0, 0, 500);

//triangle (0, 0, 500, 0, 250, 500);

//hard coded triangle drawing (width and height)
//if you use these keywords, and if you change your canvas, you will have the same drawing
//keywords = width and height
//triangle (0, 0, width, 0, width/2, height);

//ellipse (x, y, diameter (width), diameter (height))
//ellipse (width/2, height/2, 100, 100);
//ellipseMode (CORNER);
//ellipse (width/2, height/2, 100, 100);

//by default ellipseMode is set to CENTER

//Ctrl + / to put things into comments

//order of x, y pairs does not matter
//as long as x and y are in the correct order
//triangle (0, 0, width, 0, width/2, height);
//triangle (width, 0, 0, 0, width/2, height);

//by default rectMode is set to CORNER
//rect (width/2, height/2, 100, 100);
//rectMode (CENTER);
//rect (width/2, height/2, 100, 100);



//arc (a, b, c, d, start, stop);
//arc (a, b, c, d, start, stop, mode);
//arc (x, y, width, height, radian start, radian stop);
//the arc function stars and stops in a clockwise direction
//note: our diagram on GitHut is counter - clockwise



//Parameters are the things inside the parentheses
//Separated by commas, on the function call
//Function calls expect a certain number of parameters
//Sometimes there are "optional" parameters
//This is called function overloading



////image of 1/2 PI right bottom
//arc(250, 255, 250, 250, 0, HALF_PI); 

////image of 1/2 PI left bottom
//arc(250, 266, 260, 260, HALF_PI, PI);

////OPEN = shape isn't completely outlined
//arc(250, 255, 280, 280, 0, PI+QUARTER_PI, OPEN);

////CHORD = shaped outlined (connection of endpoints)
//arc(250, 255, 280, 280, 0, PI, CHORD);

////PIE = endpoints aren't connected with just one line (pie shaped)
//arc(250, 255, 280, 280, 0, PI+QUARTER_PI, PIE);

////-HALF_PI seems to be in the 1st Quadrant, then goes to PI
//arc(250, 250, 250, 250, -HALF_PI, PI);

////starts from PI and goes to QUARTER_PI (in the 4th Quadrant)
//arc(250, 250, 250, 250, QUARTER_PI, PI);

//arc (width/2, height/2, 100, 100, -PI, 0);
//arc (width/2, height/2, 100, 100, PI, TWO_PI);

//This will not work because the stop radian is smaller than the start radian
//arc (width/2, height/2, 100, 100, 0, -PI);

//arc (width/2, height/2, 100, 100, HALF_PI, PI);
//arc (width/2, height/2, 100, 100, -HALF_PI, HALF_PI);
//arc (width/2, height/2, 100, 100, HALF_PI, TWO_PI);




//mouseX and mouseY are 2 important keywords in processing
//These keywords grab the coordinates of wherever your mouse is 

////This will grab the mouse only once
//ellipse (mouseX, mouseY, 100, 100);




//Funtion DO STUFF in your code -> mini instruction sets
//The function DEFINITION is the set of instructions
//The function CALL is telling the program to DO IT
//The function CALL is like a command


//void means it won't return anything 
//function call looks like this -> functionName();
//function definition looks like this -> 
//returnTYPE functionName() 
//{
//   Code goes here
//}

//some functions we can call in processing without defining 
//they are already defined and available in the language
//ex. size (x, y)  size (width, height)
//ex. ellipse (x, y, width, height)

//other functions are called a certain way by default
//and instead we have to define them
//ex. void setup(){}
//ex. void draw (){}


//EOF fount 'x' ERROR was found when x=0 and y=0 was in a different row
int x = 0; //This is defining some integer variable x
           //Basically it is telling the computer to save some space/memory for the integer x
           //initializing x variable that was defined above
  
int y = 0; //This is defining some integer variable y
           //initializing y variable that was defined above

//This is always called ONE TIME at the beginning of the program run
void setup()
{
  //This is a good place to put things you want to stay the same
  size (500, 500);
  
  //This is called - 8 bit color
  //One value will give a range from 0 - 255
  //0 being completely dark, 255 being completely light
  //255 = white
  //background (255);
}

//This is called CONTINUOUSELY as the program runs
void draw ()
{
  //When you define a variable, you MUST declare dataType
  //If you put int x and y into the setup function, then the draw won't be able to reach
  //There isn't anything that is shared when put in a function
  //But if you put it outside of the functions then they can be globally accessed
  
  //  int x; //This is defining some integer variable x
  //         //Basically it is telling the computer to save some space/memory for the integer x
  //  x = 0; //initializing x variable that was defined above
  
  //  int y; //This is defining some integer variable y
  //  y = 0; //initializing y variable that was defined above
  
  //Put background color if you don't want to see the tracing of the circle\
  //Basically it covers up the previous circles
  background (255);
  
  //ellipse (mouseX, mouseY, 100, 100);
  
  //This is being drawn over and over again, even though it is not seen as it is
  //ellipse (0, 0, 100, 100);
  
  //Since we put variables we can use them instead of #'s
  //ellipse (x, y, 100, 100);
  
  //Because of this the ellipse would move
  //But remember that since you originally set int x and y to = 0
  //AND since they are in the void draw, they are reset every time
  x++; //add one to x
  y++; //add one to y
  
  ellipse (x, y, 100, 100);
}
