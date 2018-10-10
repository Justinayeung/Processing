//Array is a computer programming term for a list -- [] -- will indicate that it is a list 
//length is how many things are in the array(include 0)

//index of list  {0, 1, 2, 3, 4} 
//int[] myNums = {8, 5, 3, 2, 6}

//myNum with the index of 2
//myNums[2] --> 3
//mNums[0} --> 8

//myNum.length --> 5

//int[] myNums = {8, 5, 3, 2, 6, ...}
//If this went on forever then myNum.lengh - 1

//Sets up an empty array with a length of 4 --> { , , , };
int[] placeHolder = new int[4];

int[] myNums = {6, 2, 9, 5, 7};

String[] names = {"NICOLE", "NICOLE", "NICOLE"};

void setup()
{
  println(myNums[0]);
  println(myNums.length);
  
  int length = myNums.length;   //Variable
  println(myNums[length-1]);    //Since length is 5, then length-1 = 4 --- so it will print the 4th index which is 7
  
  println(names[1]);
}
