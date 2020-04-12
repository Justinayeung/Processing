import processing.sound.*;

AudioIn input;
Amplitude analyzer;
float vol;

Drops d[];

void setup() {
  fullScreen();
  // Start listening to the microphone
  // Create an Audio input and grab the 1st channel
  input = new AudioIn(this, 0);

  // start the Audio Input
  input.start();

  // create a new Amplitude analyzer
  analyzer = new Amplitude(this);

  // Patch the input to an volume analyzer
  analyzer.input(input);
  
  d = new Drops[500];
  for(int i = 0; i < 500; i++){
    d[i] = new Drops();
  }
}

void draw() {
  background(0);
  vol = analyzer.analyze();
  // Get the overall volume (between 0 and 1.0)
  //float vol = analyzer.analyze();
  fill(0, 50);
  stroke(0);

  //rect (0, 0, width, height);
  for(int i = 0; i < 500; i++){
    d[i].display();
    
    if(d[i].y > d[i].endPos) {
      d[i].end();
    } else {
      d[i].display();
    }
  }
  
  // Draw an ellipse with size based on volume
  fill(250, 250, 250, 50);
  ellipse(width/2, height/2, 10+vol*1000, 10+vol*1000);
}

class Drops {
  float x, y, speed;
  float ellipseX, ellipseY, endPos;
  color c;
  
  Drops() {
    init();
  }
  
  void init() {
    x = random(width);
    y = random(-7000, 0);
    speed = random(10, 40);
    c = color(random(255), random(255), random(255));
    ellipseX = 0;
    ellipseY = 0;
    endPos = height - (random(1000));
  }
  
  void update() {
    y += speed;
  }
  
  void display() {
    fill(c);
    noStroke();
    rect(x, y, 2+vol*0.2, 15+vol*0.5);
    update();
  }
  
  void end() { //when drops touches the ground
    stroke(c);
    noFill();
    ellipse(x, y, ellipseX, ellipseY);
    
    ellipseY += speed+(vol*50) * 0.2;
    ellipseX += speed+(vol*500) * 0.5;
    if(ellipseX > 200) {
      init();
    }
  }
}
