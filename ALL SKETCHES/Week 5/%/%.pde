int myNumber = 10;

//% is way to check if a number is divisible by something meaning remainder = 0
if(myNumber % 5 == 0)
{
  println("Is divisible by 5");
}

//This doesn't print anything because 10 cannot be divided by 3 - remainder = 1
//if(myNumber % 3 == 0)
//{
//  println("Is divisible by 3");
//}

//This would work because the remainder is set to equal 1
//if(myNumber % 3 == 1)
//{
//  println("Is divisible by 3");
//}

for (int i = 0; i < 10; i++)
{
  if (i % 2 == 0 && i != 0)
  {
    println(i + "is even");
  }
  
  if (i % 2 == 1)
  {
    println(i + "is odd");
  }
}
