int num1 = 3;
int num2 = 1;

//Definition of custom function that adds two numbers together and 'returns' their sum
int sumNumbers(int part1, int part2) //Takes in two parameters (part1, part2)
{
  int sum = part1 + part2;
  
  return sum;  //returns the sum
}

//Calling the function sumNumber and setting it equal to the variable mySum
int mySum = sumNumbers(num1, num2);

void setup()
{
  println(mySum);
  println(sumNumbers(5, 9));
  println(sumNumbers(14, 10));
}
