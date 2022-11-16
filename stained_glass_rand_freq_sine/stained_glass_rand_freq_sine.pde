
import processing.sound.*;
SinOsc sine;
TriOsc triangle;

void setup(){
size(1000,600);
background(0);
ellipseMode(CENTER);
sine = new SinOsc(this);
  sine.amp(0.2);
  sine.play();
  triangle = new TriOsc(this);
  triangle.play();
}
void draw(){
  float det = random (440,800);
  float a = 440;
  float b = 493.88;
  float c = 523.25;
  float d = 587.33;
  float e = 659.25;
  float f = 698.46;
  float g = 783.99;
  float keyc = c;
  float keyctwo = e;
  float btwo = 246.94;
  float etwo = 329.63;
  float gtwo = 392.00;
  float ctwo = 261.63;
  
 if (det < 523.24) {
    keyc = b;
    keyctwo = btwo;
  }
  else if (det < 587.32) {
  keyc = c;
  keyctwo = etwo;
  }
  else if (det < 698.45){
  keyc = e;
  keyctwo = gtwo;
  }
  else if (det < 800) {
  keyc = g;
  keyctwo = ctwo;
  } 
  
  frameRate(random(4,9));
  sine.freq(keyc);
  triangle.freq(keyctwo);
//random width & height
float rw = width-random(width);
float rh = height-random(height);
fill(random(255),random(255),random(255),(random(100,150)));
noStroke();
rect(rw, rh,rw,rh);
}
