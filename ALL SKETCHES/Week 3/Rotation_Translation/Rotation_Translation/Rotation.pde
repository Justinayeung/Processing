void setup()
{
  size(500, 500);
}

void draw()
{ 
  //rect(200, 200, 100, 100); 
  //Reference to show where to move the rectangle to
  
  //translate (x, y)
  //translating the canvas DIAGONALLY
  //translate(100, 100);
  
  //translating the canvas to the RIGHT
  //translate(100, 0);
  
  //translating the canvas DOWN
  //translate(0, 100);
  
  //Drawing a rectangle at 100, 100
  //rect(0, 0, 100, 100);
  //translate(0, 100);
  //rect(0, 0, 100, 100);
  //translate(100, 0);
  //rect(0, 0, 100, 100);
  //translate(0, -100);
  //rect(0, 0, 100, 100);
  
  //rect(0, 0, 100, 100);
  ////Convert 45 degrees to radians and rotate
  //rotate(radians(45));
  //rect(0, 0, 100, 100);
  
  //rect(width/2, height/2, 100, 100);
  //rotate(radians(45));
  //rect(width/2, height/2, 100, 100);
  //This rotated around the top corner or (0, 0)
  
  //If you translate it changes where the (0, 0) corner is
  //The rotation will rotate around the translated corner
  rect(width/2, height/2, 100, 100);
  translate(width/2, height/2);
  rotate(radians(45));
  rect(0, 0, 100, 100);
  //Since the (0, 0) point was changed due to translation
  //The last line rect(width/2, height/2, 100, 100); had to change to (0, 0, 100, 100);
}
