int num = 100;
float[][] Positions;    //2DArray
color[] colors = new color[num];    //Color array

void setup() 
{
  size(600, 600);
  background(0);
  noStroke();
  Positions = new float [num][num];    //new float = array of [100][100]
  for (int i = 0; i < num; i++)   //loop for y (second [num])
  {
      Positions[i][0] = random(-100, width);      //random position
      Positions[0][i] = random(-100, width); 
      colors[i] = color(255,255,255,random(0,10));     //random color
  }
}

void draw() 
{
  for (int i = 1; i < num; i++)   //loop for y (second [num])
  {
      fill(colors[i]);
      rect(Positions[i][0], Positions[0][i], 30, 30);     //rect(position of array, position of array, size, size)
      
      float rand = random(-1,1);
      
      if(rand >= 0)  
      {
        Positions[i][0] += 6;     //movement
      } 
      else 
      {
        Positions[0][i] += 6;    //movement
      }
      
      if(Positions[i][0] >= width || Positions[0][i] >= height)    //random if greater than or equal to height or width
      {
        Positions[i][0] = random(-100, width);    //random between -100 and num
        Positions[0][i] = random(-100, height);
      }
  }
}
