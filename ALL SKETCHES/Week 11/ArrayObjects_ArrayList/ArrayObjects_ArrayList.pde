int numWalkers = 100;

//ArrayList < class > name = new Arraylist < class >(); 
ArrayList<Walker> walkers = new ArrayList<Walker>();

void setup()
{
  background(255);
  size(600, 600);
  
  for(int i = 0; i < numWalkers; i++)    //Loop through 100 times
  {
    //Walker(float x0, float y0, float xStep0, float yStep0)
    walkers.add(new Walker(random(0, width), random(0, height), random(3, 10), random(3, 10)));    //And add a walker each time with a random width and height
  }
}

void draw()
{
  for(Walker w : walkers)    //for( each Walker (name) : in my ArrayList)
  {
    //w.s = int(random(10, 30));    //You can also change a variable from the class
    
    w.display();    //Calling display from class
    w.walk();       //Calling walk from class
  }    
}
