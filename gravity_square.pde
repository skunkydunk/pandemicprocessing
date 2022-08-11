//defining the values for color, speed, and square height
float x = 233.33;
float y = 0;
float speed = 0;
float speed2 = 0;
float y2 = height;
float gravity = 0.1;
float r = random(255);
float g = random(255);
float b = random(255);
float rb = random(255);
float gb = random(255);
float bb = random(255);
void setup() {
  size (700,500);
  fill(0);
  background(255);
}

void draw() {
  background(rb,gb,bb);


  // draw the ball
  noStroke();
  rect(x+208.33,y-50,50,50);
  rect(x+208.33,y2,50,50);
  rect(x-25,y-50,50,50);
  rect(x-25,y2,50,50);
  //gravity
  y = (y + speed);
  y2 = (y2 + speed2);
  speed = speed + gravity;
  speed2 = speed2 - gravity;

  if (y > height || y < 0) {
    //color stuff
    float r = random(255);
    float g = random(255);
    float b = random(255);
    rb = rb + random(-55,55);
    gb = gb + random(-55,55);
    bb = bb + random(-55,55);
    //physics stuff
    speed = speed * -0.8;
    fill(r,g,b);
    background(rb,gb,bb);
    y = height;
    speed2 = speed2 * -0.8;
    y2 = 0;
  while (abs(speed) < 2){
      speed = speed + 15;
      speed2 = speed2 - 15;
    }
  }

}
