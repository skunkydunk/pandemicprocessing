



void setup(){
size(1000,600);
background(0);
ellipseMode(CENTER);
}
void draw(){
frameRate(20);
//sphere chance
float sc = random(0,3);
float rws = random(width);
float rhs = random(height);
//random width & height
float rw = width-random(width);
float rh = height-random(height);
fill(random(255),random(255),random(255),(random(100,150)));
noStroke();
rect(rw, rh,rw,rh);
}
