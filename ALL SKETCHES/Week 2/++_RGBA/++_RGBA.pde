////deine global variables
//integer is a whole number
//int x = 0;
//int y = 0;

//float is a decimal value
float x = 0;
float y = 0;
String name = "Justina";

void setup()
{
  //Color functions can be passed a different parameters
  //One would be Grayscale
  //Two is transparency
  //Three is RGB (to get RBG go to tools and color selector)
  //G, GA, RGB, RGBA
  //
  background (255);
  size (600, 600);
  println ("THIS RUNS ONE TIME AT THE BEGINNING");
}

void draw()
{
  //RGBA (RED GREEN BLUE ALPHA) ALPHA = transparency
  //noFill();
  fill (77, 150, 165, 50);
  
  //Outline
  //noStroke();
  stroke (0, 35, 150);
  
  //Just don't do noFill(); and noStroke(); at the same time
  
  
  //background (0);  - if you don't want to see the previously ellipses
  //draw ellipses in a diagonal line
  ellipse (x, y, 100, 100);
  //x++;  shorthand - adds 1 each time
  //y++;  
  
  stroke (255, 35, 150);
  ellipse (width-x, y, 100, 100);
  
  //adds 10 each time
  x += 20;
  y += 20;
  
  println ("THIS RUNS CONTINUOUSLY");
}
