int numCirc = 100;
float angle = 0.0;
float incr = 0.05;
float scaler;
float size;
float offset;

void setup()
{
  size(1000, 600);
  scaler = height/2 - 50;
  offset = height/2;
  size = width/numCirc;
}

void draw()
{
  background(0);
  //float y1 = height/2 + sin(angle) * scaler;
  //float y2 = height/2 + sin(angle + 0.4) * scaler;
  //float y3 = height/2 + sin(angle + 0.8) * scaler;
  
  //ellipse(width/2 - 100, y1, 100, 100);
  //ellipse(width/2, y2, 100, 100);
  //ellipse(width/2 + 100, y3, 100, 100);
  
  
        ////Does  cool images
        //for(int i = 0; i <= width; i++)
        //{    
        //  angle += incr++;
        //  float y = height/2 + sin(angle) * scaler;
        //  float x = i++;
          
        //  ellipse(x, y, 10, 10);
        //}
  
  
  //for (int i = 0; i < numCirc; i++)
  //{
  //  float y = offset + cos(angle + 0.1*i) * scaler;
  //  ellipse(size*i + size/2, y, size, size);
  //}
  
  //angle += incr;
}
