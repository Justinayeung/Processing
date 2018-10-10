int[] y;
int[] myNums = {2, 6, 7, 3, 9};

void setup()
{
  size(100, 100);
  y = new int[height];  //take our array y and give it 100 values
  
  for(int i = 0; i < myNums.length; i++)
  {
    println("i: " + i);
    println(myNums[i]+5);
  }
}

void draw()
{
  
}
