
PShape s;
Flock flock;
float c = 0.0;
float a = 0.0;
void setup() {
  size(1800, 1800, P2D);
  
    flock = new Flock();
  // Add an initial set of boids into the system
  for (int i = 0; i < 150; i++) {
    flock.addBoid(new Boid(width/2,height/2));
  }
  
  s = createShape();
  s.beginShape(TRIANGLE_STRIP);
  s.fill(220, 550, 255);
  s.noStroke();
  s.vertex(300, 750);
  s.vertex(400, 200);
  s.vertex(800, 200);
  s.vertex(900, 750);
  s.endShape();
  
  frameRate(30);
}

void draw() {
  background(324);
  shape(s, 35, 50);
  
  flock.run();
}

void mousePressed() {
  flock.addBoid(new Boid(mouseX,mouseY));
textSize(150);
text("ATLAS", mouseX, mouseY); 
fill(0, 408, 612);
text("ATLAS", mouseX, mouseY*2);
fill(0, 408, 612, 204);
text("ATLAS", mouseX, mouseY*3);

a = a + 0.04;
 c = cos(a);
  
  s.scale(c); 
}
