int num = 50;    //num is equal to x.length

int[] x = new int[num];    //Generate array with 50 placeholders

void setup()
{
  size(600, 600);
  noStroke();
  fill(255, 100);
}

void draw()
{
  background (0);
  
  //takes values at a certain index and sets it equal to the preceding value
  //This essentially shifts the value over by 1 index
  //You can use num or x.length
  for(int i = x.length-1; i > 0; i--)
  {
    x[i] = x[i-1];
  }
  
  //Save the current mouseX at index 0
  x[0] = mouseX;
  
  //Draw 50 circles based on the last 50 saved mouseX positions
  for(int i = 0; i < x.length; i++)
  {
    ellipse(x[i], height/2, i, i);
  }
}

//Within our draw function we save the current mouseX as x[0]
//We shift all the previous mouseX coordinates down by 1 index place in our array
//For each entry in out array - we draw a circle with x coordinate = to the saved mousex values
//And height and width = the index of those mouseX values
