float a, R, G, B;
int background = 0;
import processing.sound.*;
SoundFile file;
Amplitude amp;
AudioIn in ;


void setup() {
   fullScreen();
   file = new SoundFile(this, "1.mp3");
    file.play(1);
    amp = new Amplitude(this); in = new AudioIn(this, 0); in .start();
    amp.input(file);
}

void draw() {
  fill(background, 20);
  
  rect(-1, -1, width+1, height+1);
  translate(width/2, height/2);
  for (int i = 0; i < 360; i+=2) {
   
    float angle = sin(i+a)*50;
    /* Locations of circles.  */
    float x = sin(radians(i))*(150+angle);
    float y = cos(radians(i))*(150+angle);
    float x2 = sin(radians(i))*(100+angle);
    float y2 = cos(radians(i))*(100+angle);

    R = (((float)400/width)+angle)+500*sin(i+a*3);
    G = (50+angle)+random(200)*sin(i+a*3);
    B = (((float)255/height)+angle)+random(100)*sin(i+a*3);
    
    
    stroke(R, G, B);
    fill(R, G, B);
    
    
    ellipse(x, y, angle/6, angle/6);
    ellipse(y2, x2, 4, 4);
    line(x, y, x2, y2);
  }
  a+=0.02;
   println(amp.analyze());
            if (amp.analyze() < 0.2) { 
              for (int i = 0; i < 360; i+=2) {
    float angle = sin(i+a)*50;
    float x = sin(radians(i))*(100+angle);
    float y = cos(radians(i))*(100+angle);
    float x2 = sin(radians(i))*(100+angle);
    float y2 = cos(radians(i))*(100+angle);
    ellipse(x, y, angle/6, angle/6);
    ellipse(y2, x2, 4, 4);
    line(x, y, x2, y2);
                
  
  }}