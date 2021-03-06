// Daniel Shiffman
// The Nature of Code
// http://www.shiffman.net/teaching/nature

// Landscape with height values according to Perlin noise

import processing.opengl.*;

Landscape land;    
float theta = 0.0;


void setup() {

  size(640,360,OPENGL);

  // Create a landscape object
  land = new Landscape(20,800,400);
}

void draw() {

  // Ok, visualize the landscape space
  background(255);
  pushMatrix();
  translate(width/2,height/2+20,-160);
  rotateX(PI/3);
  rotateZ(theta);
  land.render(); 
  popMatrix();

  land.calculate();
  
  theta += 0.0025;
}
