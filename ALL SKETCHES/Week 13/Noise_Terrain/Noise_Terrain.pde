//counter makes the noise non-static
float counter = 0;
float offset = 0;

void setup()
{
  size(600, 600);
  fill(255);
}

void draw()
{
  //Noise is going to be random but it won't jump like random()
  //background(0);
  //float noiseS = map(noise(offset), 0, 1, 100, 300);
  //float noiseX = map(noise(offset), 0, 1, 0, width);
  //float noiseY = map(noise(offset), 0, 1, 0, width);
  //float noiseR = map(noise(offset), 0, 1, 0, 255);
  //float noiseG = map(noise(offset), 0, 1, 0, 255);
  //float noiseB = map(noise(offset), 0, 1, 0, 255);
  //fill(noiseR, 255 - noiseG, noiseB);
  //ellipse(noiseX, noiseY, noiseS, noiseS);
  //offset += 0.005;
  
  //Takes all the pixels on the canvas and puts them in an array
  //loadPixels();
  
  //noiseDetail(10, 0.5);
  
  //float xoffset = 0.0;
  //for(int x = 0; x < width; x++)
  //{
  //  float yoffset = 0.0;
  //  for(int y = 0; y < height; y++)
  //  {
  //    //color brightness = color(random(0, 255));
  //    color brightness = color(map(noise(xoffset, yoffset, counter), 0, 1, 0, 255));
  //    pixels[x+y * height] = color(brightness);
  //    yoffset += 0.01;
  //  }
  //  xoffset += 0.01;
  //}
  
  //updatePixels();
  
  //counter += 0.1;
}
