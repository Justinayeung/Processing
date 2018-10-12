int numX = 60;    //num is equal to x.length since new int[numX];
int numY = 30;    //num is equal to y.length since new int[numY];

int[] x = new int[numX];   //Generate array with 50 placeholders
int[] y = new int[numY];   //Generate array with 50 placeholders

void setup()
{
  size(600, 600);    //Size of canvas
  noStroke();        //No outlines
}

void draw()
{
  background (50);    //Background = black
  
  for(int i = x.length-1; i > 0; i--)    //for(int i = x.length-1 (last number in array)-- starting condition; i>0 --condition for continuing; i-- increment decreases;
  {
    x[i] = x[i-1];      //array x[i] equal x[i-1], x[i] is equal to the index below it --shift all the previous mouseX coordinates down by 1 index place in our array
  }
  
  x[0] = mouseX;        //Save the current mouseX at index 0 (x[0])
  
  for(int i = 0; i < x.length; i++)      //Draw 60 circles based on the last 60 saved mouseX positions --for(int i = 0-- starting; i<size of array --continue; i++ increment inceases;
  {
    pushMatrix();                    //Saves before canvas translations/rotations
    
    rotate(radians(i++));                //rotation = i++ (canvas rotation == circular shape)
    ellipse(x[i], 0, i/2, i/2);          //For each entry in our array - we draw a circle with x coordinate = to the saved mouseX values --and height and width = the index of those mouseX values
    ellipse(x[i], 100, i/2, i/2);        //ellipse(x1, y1, width, height)
    ellipse(x[i], 200, i/2, i/2);
    ellipse(x[i], 300, i/2, i/2);
    ellipse(x[i], 400, i/2, i/2);
    
    fill(188, 153, 38, 100);      //Fill color = RGB, and alpha/transparency = 100
    popMatrix();                     //Reset canvas translation/rotation
  }
 
 for(int j = y.length-1; j > 0; j--)     //for(int j = y.length-1 (last number in array-- starting; j>0 --continue; j-- increment decreases;
 {
   y[j] = y[j-1];       //array y[j] equals y[j-1], y[j] is equal to the index below it --shift all the previous mouseY coordinates down by 1 index place in our array
 }
 y[0] = mouseY;         //Save the current mouseY at index 0 (y[0])
 
 for(int j = 0; j < y.length; j++)       //Draw 30 rectangels based on teh last 30 saved mouseY positions --for(int j = 0-- starting; j<size of array --continue; j++ increment increases;
 {
   pushMatrix();                    //Saves before canvas translations/rotations
   
   rotate(radians(j++));        //rotation = j++ (canvas rotation == circular shape)
   rect(y[j], 0, j, j);         //For each entry in our array - we draw a rectangle with y coordinate = to the saved mouseY values --and height and width = the index of those mouseY values
   rect(y[j]+1, 100, j, j);       //rect(x1, y1, width, height)
   rect(y[j]+2, 200, j, j);
   rect(y[j]+3, 300, j, j);
   rect(y[j]+4, 400, j, j);
   
   fill(255, 100);    //Fill color = white, and alpha/transparency = 100
   popMatrix();                     //Reset canvas translation/rotation
 }
}
