class Particle {//glowing particles
  PVector location;
  PVector velocity;
  PVector acceleration;
  float lifespan;
  float topspeed;
 
  Particle(PVector l) {

    velocity = new PVector(0,0);
    location = new PVector(mouseX+random(150),mouseY+random(100));
    lifespan = 195.0;
    topspeed = 4;
  }
 

  void run() {
    update();
    display();
  }
 
  void update() {
    PVector mouse = new PVector(mouseX,mouseY);
    PVector dir = PVector.sub(mouse,location);

    dir.normalize();

    dir.mult(0.5);

    acceleration = dir;
 
    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
    lifespan -= 2.0;
 
  }
 
  void display() {
    //stroke(0,lifespan);
    //fill(random(694),random(500),lifespan);
    //ellipse(location.x,location.y,random(10),random(8));
    
    imageMode(CENTER);
    tint(r,g,b,lifespan);
  //  tint(249,170,132,lifespan);
    image(glow,location.x,location.y);


  }
  


  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
  
   void checkEdges() {
 
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
 
    if (location.y > height) {
      location.y = 0;
    }  else if (location.y < 0) {
      location.y = height;
    }
  }
  
}
