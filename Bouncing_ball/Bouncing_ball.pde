//Make a circle that bounces on the ground and changes color
//Add simple gravity that diminishes bounce over time


float x = 250;         //location on x axis
float y = 50;          //location on y axis
float speed = 0;       //speed of the square
float gravity = 0.05;   //creating a gravity multiplier for later use with speed
float r = 50;          //assigning the color of the circle
float g = 200;
float b = 50; 



void setup() {
  
  noStroke ();
  size (500, 500);
  
  fill (200);
  
 
  
}

void draw() { 

 
  //defining the color of the circle
  //this function changes the color of the circle every time it hits the bottom of the frame
 
 //setting background to refresh with draw (changes colors when ball bounces)
 //color is made by mixing up RGB values! r = b, g = r, etc.
  background(b, r , g);
  
    if (y >= height-15){
      r = random(255);
      b = random(255);
      g = random(255);
    }
    
  fill(r, g, b); 
  
  //assigning x and y to the circle and setting the size to 50
  circle(x, y , 50);
  
  
  //creating a falling effect
  y = y + speed;              //changing height of the circle in increments equal to speed
  speed = speed + gravity;    //changing speed in increments equal to gravity: gravity controls the increase of speed 
 
  
  //creating the color of the text
  fill(255);
  textSize(20);
  //setting a speed sensor to tell us the speed and height of the ball
  text("current falling speed = "+speed , 50, 50);
  text("current height = " + y, 50, 100);
  
  //apex sensor if the ball's speed is low enough
  if (abs(speed) < 0.5) {
    text("APEX", 50, 150);
  }
  
  if (y > height-15) {
    if (speed > 4) {
  //once the ball hits the bottom of the screen, it should bounce back up.
  //reversing the speed of the ball allows the y axis change to become negative, meaning the ball moves upwards
  //multiplying by -0.85 mimics a dampening of speed that would occur in real life
    speed = speed * (-0.85);
    
  //if the ball hits the bottom of the screen and is moving slow enough, the speed will instead just be reversed without a dampening effect
  //this allows the ball to continue bouncing forever
    } else if (abs(speed) < 4){
      speed = -(speed);
    }
  }
 //end draw 
}
  
  
  

     
     
   
