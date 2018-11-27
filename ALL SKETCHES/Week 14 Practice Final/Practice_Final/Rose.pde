//class Rose
//{
//  float n, d;     //Used to proportionally change the angle -- Controls petal numbers
//  float a, s, r;  //Angle, size, and radius -- Overall rose variables
//  float x , y;    //X and Y coordinates -- Used to draw lines that connect the circle
  
//  //Constructor function
//  Rose(float n0, float d0, float s0)
//  {
//    n = n0;    //Used to proportionally change the angle
//    d = d0;    //Used to proportionally change the angle
//    a = 0;    //Angle
//    s = s0;  //size
//    r = s * cos(n/d * a);    //radius
//    x = r * cos(a);    //X coordinates
//    y = r * sin(a);    //Y coordinates
//  }
  
//  void display(int roseX, int roseY)
//  {
//    pushMatrix();
    
//    translate(roseX, roseY);    //Rose pattern will be based on the middle of the canvas
  
//    float prevX = x;    //Saving previous X (to draw a line)
//    float prevY = y;    //Saving previous Y (to draw a line)
  
//    stroke(255);
//    noFill();
//    strokeWeight(1);
    
//    //Determining x and y -- recalculating it each time because the angle is going to change
//    r = s * cos(n/d * a);
//    x = r * cos(a);
//    y = r * sin(a);
    
//    line(x, y, prevX, prevY);
    
//    a += 0.1;    //Angle changes
    
//    popMatrix();
//  }
//}
