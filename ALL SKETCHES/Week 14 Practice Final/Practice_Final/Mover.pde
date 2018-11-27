//class Mover
//{
//  PVector location;     //Has a location.x and a location.y
//  PVector velocity;     //Has a velocity.x and a velocity.y
//  PVector acceleration; 
//  int size;
  
//  //Constructor function
//  Mover()
//  {
//    location = new PVector(width/2, height/2);
//    velocity = new PVector(0, 0);
//    acceleration = new PVector(0.1, 0.2);
//    size = 50;
//  }
  
//  void display()
//  {
//    fill(25, 150, 100);
//    ellipse(location.x, location.y, size, size);
//  }
  
//  void move()
//  {
//    location.add(velocity);
//    velocity.add(acceleration);
//    println("Vx: " + velocity.x);
//    println("Vy: " + velocity.y);
//  }
  
//  void checkBoundaries()
//  {
//    if(location.x <= size/2)
//    {
//      location.x = size/2;
//      velocity.x *= -1;
//      acceleration.x *= -1;
//    }
    
//    if(location.x >= width - size/2)
//    {
//      location.x = width - size/2;
//      velocity.x *= -1;
//      acceleration.x *= -1;
//    }
    
//    if(location.y <= size/2)
//    {
//      location.y = size/2;
//      velocity.y *= -1;
//      acceleration.y *= -1;
//    }
    
//    if(location.y >= height - size/2)
//    {
//      location.y = height - size/2;
//      velocity.y *= -1;
//      acceleration.y *= -1;
//    }
//  }
//}
