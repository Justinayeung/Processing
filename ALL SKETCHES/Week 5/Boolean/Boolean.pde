boolean isTrue = true;
boolean isFalse = false;

//For AND to be true, all conditions must be true - && 
//   - Meaning all conditions in if (...) have to be true, even one false condition would stop the code from working
//For OR to be true, only one of the conditions must be true - ||
//For NOT = a "!" before a boolean will basically reverse it

//if (isTrue && 3 < 2) == meaning this is false so nothing will run

//if (...) is true
if (isTrue && 3 > 2)
{
  //then
  println ("Hello");
}

//or
//if (!isFalse)
//{
//  println("Hello");
//}

if (isFalse)
{
  println("Goodbye");
}


//if (drawOnce)
//{
//  println(...);
//}
//
//drawOnce = false;
