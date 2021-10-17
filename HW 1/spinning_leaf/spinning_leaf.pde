// Example 15-2: Image "sprite"

PImage leave; // A variable for the image file
float x,y;   // Variables for image location
float rot;   // A variable for image rotation

void setup() {
  size(600,600);
  
  // Load image, initialize variables
  leave = loadImage("dry-leaves.png");
  leave.resize(32,32);
  x = 0.0;
  y = width/2.0;
  rot = 0.0;
}

void draw() {
  background(255);
  
  // Translate and rotate
  translate(mouseX,mouseY);
  rotate(rot);
  
  // Images can be animated just like regular shapes using variables, translate(), rotate(), and so on.
  imageMode(CENTER);
  image(leave,0,0); 
  
  // Adjust variables for animation
  x += 1.0;
  rot += 0.02;
  if (x > width+leave.width) {
    x = -leave.width;
  }
}
