int [] rayInt = {4, 2, 8, 3, 9, 11};
String [] fruits = {"Apples", "Oranges", "Grapes"};
Boolean [] rayBool = {false, true, false};
//colors[] colorsArray = {color(208, 150, 133), color(180, 130, 150)};cd

void setup()
{
//  ------------------------------------------------------------------------------------------
//  return is for computer and println is for people to see
//  println(returnFirstString(__stringArray name__));
//  println(returnLastArray(__stringArray name__));
//  ------------------------------------------------------------------------------------------
  stringValue();
  printInt();
  Opposite();
}

//  ------------------------------------------------------------------------------------------
//  A custom function definition
//  This function takes in any string array and returns its first value --> the value at index 0
//  String returnFirstString(String[] stringArray)
//  {
//    return stringArray[stringArray.length-1];

//  -----------------OR-----------------------

//    int lastIndex = stringArray.length-1;
//    return stringArray[lastIndex];
//  }
//
//  String returnLastString(String[] stringArray)
//  {
//    return stringArray[2];
//  }
//  ------------------------------------------------------------------------------------------

//A function that returns the first value of the string array
//A function that returns the last value of the string array
void stringValue()
{
  println(fruits[0]);
  println(fruits[2]);
}
//  ------------------------------------------------------------------------------------------
//  To not hard code:
//  
//  void printInt(int[] intArray) {...}
//  ------------------------------------------------------------------------------------------
//A function that loops through the integer array and prints out all the values
void printInt()
{
  for (int i = 0; i < rayInt.length; i++)
  {
    println(rayInt[i]);
  }
}

//  ------------------------------------------------------------------------------------------
//  To not hard code:
//
//  void Opposite(boolean[] boolsArray) {...}
//  ------------------------------------------------------------------------------------------
//A function that loops through the boolean array and prints the opposite of each entry
void Opposite()
{
  for (int i = 0; i < rayBool.length; i++)
  println(!rayBool[i]);  //! prints opposites
}
