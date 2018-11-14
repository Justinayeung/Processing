int num = 100;
float[][] pos = new float[num+1][num+1];    //2DArray = array of [100][100]
color[] colors = new color[num+1];    //Color array

void setup() 
{
  size(600, 600);
  background(0);
  noStroke();

  for (int i = 0; i < pos.length; i++)   //loop for y (second [num])
  {
    pos[0][i] = random(-100, width);      //random position x
    pos[i][0] = random(-100, height);     //random position y
    colors[i] = color(255,255,255,random(0,10));     //random color
  }
}

void draw() 
{
  for (int i = 1; i < pos.length; i++)   //loop for y (second [num])
  {
    fill(colors[i]);
    rect(pos[0][i], pos[i][0], 30, 30);     //rect(position of array, position of array, size, size)
    
    float rand = random(-1,1);
    
    if(rand >= 0)  
    {
      pos[0][i] += 6;     //movement
    } 
    else 
    {
      pos[i][0] += 6;    //movement
    }
    
    if(pos[0][i] >= width || pos[i][0] >= height)    //random if greater than or equal to height or width
    {
      pos[0][i] = random(-100, width);    //random between -100 and num
      pos[i][0] = random(-100, height);
    }
  
  }
}
