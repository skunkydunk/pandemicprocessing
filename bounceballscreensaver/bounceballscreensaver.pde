int x = 0;
float r = 50;
float g = 50;
float b = 50;
int speed = 250;
int tilt = 100;
int y = 0;
void setup() {
  frameRate(2);
  size(700, 700);
}
void draw() {
  frameRate(15);
  noStroke();
  fill(r,g,b,random(50,90));
  ellipse(x,y,width/2,height/2);
  r = constrain(r,150,225);
  g = constrain(g,150,225);
  b = constrain(b,150,225);
  r = r + random(-50,50);
  g = g + random(-50,50);
  b = b + random(-50,50);
  x = x + speed;
  y = y + tilt;
  if (x > width || x < 0) {
    speed = speed * -1;
  }
  if (y - 133 > height-30 || y < -133){
    tilt = tilt * -1;
  }
}
