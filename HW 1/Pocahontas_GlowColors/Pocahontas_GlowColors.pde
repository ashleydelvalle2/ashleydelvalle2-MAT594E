PImage bg;
PImage glow; //texture for glow elements
int r,g,b,counter;


ArrayList<Particle> particles;
//ArrayList<Leaf> leafs;
 
void setup() {
  size(1280,720);
  particles = new ArrayList<Particle>();// leafs = new ArrayList<Leaf>();
  
  bg = loadImage("pocahontasBG.png");
  glow = loadImage("texture.png");
  
  r= 79; g= 247; b= 64; //green
  counter=0;
}


void draw() {
  //background(255);
  background(bg);
  particles.add(new Particle(new PVector(width/2,50)));
 // leafs.add(new Leaf (new PVector (width/2, 50)));
 
  for (int i = 0; i < particles.size(); i++) {
    Particle p = particles.get(i);
    p.run();
      if (p.isDead()) {
        particles.remove(i);
        
        }
    p.checkEdges();
  }

}

 void mousePressed(){
  if(counter ==0){
  
  r= 64; g= 165; b= 237; //blue
  counter = 1; 
  
  }else if(counter == 1){
    
    r= 178;g= 109;b= 242; //violeta
    counter = 2;
    
  } else if (counter ==2){
    r=247; g=124; b=64;  //orange 
    counter= 3;
  } else if(counter ==3){
    r= 79; g= 247; b= 64; //green
    counter=0;
  }
 }
