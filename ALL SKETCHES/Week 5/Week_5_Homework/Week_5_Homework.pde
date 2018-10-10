//Defining variables
float size = 400;      //Size is 400
float minSize = 50;    //Mininum size for ellipse is 50
float maxSize = 1000;  //Maximun size for ellipse is 1000
float sizeSG = 2;    //Size of growth and shrink is 1.5 = increment of how much it is shrunk/grown

void setup()
{
  size(1000, 1000);            //Canvas size
  background(236, 209, 250);   //Background color
}

void draw()
{
  background(236, 209, 250);        //Redrawing of the background so that you don't see previous ellipse
  ellipse(500, 500, size, size);    //Defining ellipse(x, y, width, height)

  float d = dist(500, 500, mouseX, mouseY);      //dist(x1, y1, x2, y2);
  
  if (d > size/2)            //If d is greater than the size/2 (which would be equal to the radius of the ellipse because size would equal diameter)
  {
    fill(200, 209, 250);     //Fill color of ellipse 
    size += sizeSG;          //Size of ellipse will grow
  }
  else
  {
    fill(100, 0, 100);       //Fill color of ellipse when mouse in circle
    size -= sizeSG;          //Size of ellipse will shrink
  }
  
  //Reference to bounce ball challenge
  //Setting boundaries for the ellipse
  if (size < minSize || size > maxSize)      //If size < 50 OR if size > 1000 multiple sizeSG by -1 (which would reverse the growth to a shrink and vice versa)
  {
    sizeSG *= -1;
  }
}
