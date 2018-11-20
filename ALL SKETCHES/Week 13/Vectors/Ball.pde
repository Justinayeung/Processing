class Ball
{
  //PVector location has location.x and location.y
  PVector location;
  //PVector velocity has velocity.x and velocity.y
  PVector velocity;
  float size;
  
  Ball(float s)
  {
    location = new PVector(random(size/2, width - size/2), random(size/2, height - size/2));
    velocity = new PVector(random(-10, 10), random(-10, 10));
    size = s;
  }
  
  void display()
  {
    fill(0);
    ellipse(location.x, location.y, size, size);
  }
  
  void move()
  {
    location.add(velocity);
  }
  
  void checkBoundaries()
  {
    if(location.x < 0 + size/2)
    {
      location.x = size/2;
      velocity.x *= -1;
    }
    
    if(location.x > width - size/2)
    {
      location.x = width - size /2;
      velocity.x *= -1;
    }
    
    if(location.y < 0 + size/2)
    {
      location.y = size/2;
      velocity.y *= -1;
    }
    
    if(location.y > height - size/2)
    {
      location.y = height - size/2;
      velocity.y *= -1;
    }
  }
}
