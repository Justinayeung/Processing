void setup()
{
  size(600, 600);
  background(0);
  rectMode(CENTER);
}

void draw()
{
  fill(255);
  
  if (mouseX > width/2-100 && mouseX < width/2+100 && mouseY > height/2-100 && mouseY < height/2+100)
  {
    background(255, 255, 0);
  }
  else
  {
    background(0);
  }
  
  rect(width/2, height/2, 200, 200);
}
