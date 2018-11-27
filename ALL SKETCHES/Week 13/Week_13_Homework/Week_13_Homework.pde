//ArrayList<class> name = new ArrayList<class>();
ArrayList<Circle> circles = new ArrayList<Circle>();

void setup()
{
  background(0);    //Background color = black
  size (800, 800);  //Canvas size
  noStroke();       //No outline
 
  //Circle(float s, float r, float a, float o, float sc, float speed0)
  circles.add(new Circle(4, 0.0, width/2, width/2, 0.5));
} 

void draw()
{
  stars();    //Calling stars function
  
  for(Circle c : circles)    //for(each Circle (name) : in the arrayList)
  {
    c.display();    //Calling display from class
    c.spin();       //Calling spin from class
  }
}

void stars()
{
  ellipse(random(0, width), random(0, height), 2, 2);      //Random small ellipses
  fill(random(0, 255), random(0, 255), random(0, 255));    //Random fill color
}
