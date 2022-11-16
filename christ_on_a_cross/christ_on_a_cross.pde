import processing.sound.*;
SinOsc sine; 
float x = 20;
//cross made of stain-glass rectangles 
//location determined by changing variables x,y and a random offset ((rx-20),etc.)
//Cross can follow mouse --> could also make it free-floating like screensaver? 
//Old rectangles fade when too far
float broundr = random(255);
float broundg = random(255);
float broundb = random(255);

void setup(){
    sine = new SinOsc(this);
 // setting background color variables
 size(700,500);
  background(random(255),random(255),random(255));
}
void keyboard(){
if (keyPressed == true) {
    if (key == 'a') {
      sine.freq(220);
      sine.play();
      fill(200, 50, 150);
      x = x + 1;
      x = constrain(x, 1, 40);
      if (x >= 40) {
        x = 20;
      }
    } else if (key == 's') {
      sine.freq(247);
      sine.play();
      fill(200, 50, 150);
      x = x + 1;
      x = constrain(x, 1, 40);
      if (x >= 40) {
        x = 20;
      }
    } else if (key == 'd') {
      sine.freq(277);
      sine.play();
      fill(200, 50, 150);
      x = x + 1;
      x = constrain(x, 1, 40);
      if (x >= 40) {
        x = 20;
      }
    } else if (key == 'f') {
      sine.freq(294);
      sine.play();
      fill(200, 50, 150);
      x = x + 1;
      x = constrain(x, 1, 40);
      if (x >= 40) {
        x = 20;
      }
    } else if (key == 'g') {
      sine.freq(330);
      sine.play();
      fill(200, 50, 150);
      x = x + 1;
      x = constrain(x, 1, 40);
      if (x >= 40) {
        x = 20;
      }
    } else if (key == 'h') {
      sine.freq(370);
      sine.play();
      fill(200, 50, 150);
 
      x = x + 1;
      x = constrain(x, 1, 40);
      if (x >= 40) {
        x = 20;
      }
    } else if (key == 'j') {
      sine.freq(415);
      sine.play();
      fill(200, 50, 150);
      x = x + 1;
      x = constrain(x, 1, 40);
      if (x >= 40) {
        x = 20;
      }
    } else if (key == 'k') {
      sine.freq(440);
      sine.play();
      fill(200, 50, 150);
      x = x + 1;
      x = constrain(x, 1, 40);
      if (x >= 40) {
        x = 20;
      }
    }
  }
}
void rectanglesandcircles(){
 float rectxone = mouseX+random(-20,20);
 float rectyone = mouseY+random(-50,400);
 float rectxtwo = mouseX+random(-20,20);
 float rectytwo = mouseY+random(-20,20)+50;
   fill(random(255),random(255),random(255),random(100,200));
   ellipse(rectxone,rectyone, random(50),random(50));
   rect(rectxone,rectyone, random(50),random(50));
   ellipse(rectxtwo+random(-150,150),rectytwo, random(50),random(50));
   rect(rectxtwo+random(-150,150),rectytwo, random(50),random(50));
 }
void draw(){
 
 frameRate(30);
 noStroke();
//making fade effect with opaque looping rectangle background
 fill(broundr+random(-50,50),broundg+random(-50,50),broundb+random(-50,50),7);
 rect(0,0,width,height);
//A major keyboard
keyboard();
//drawing rectangles and ellipses
rectanglesandcircles();


}
