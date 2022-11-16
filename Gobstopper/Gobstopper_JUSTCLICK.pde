float sizex = 5;
float sizey = 5;
float expand = 50;
float deflate = 50;
void setup(){
  size(500,500);
  background(255);
}

void draw(){
  ellipseMode(CENTER);
  float locx = width/2;
  float locy = height/2;
    ellipse(locx,locy,sizex,sizey);
    if (mousePressed == true & sizex < 700){
    sizex = sizex + expand;
    sizey = sizey + expand;
    }
    fill(random(255),random(255),random(255));
 if (mousePressed == false & sizex > 10){
    sizex = sizex - deflate;
    sizey = sizey - deflate;
}
}
