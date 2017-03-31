import peasy.*;


float noiseX = 0.0;
float noiseY = 0.0;
float step = 0.05;
float yOffset = 0.0;
int gridSize = 10;
int res=100;
PeasyCam cam;


void setup() {
  size(1200, 800, P3D);
  strokeWeight(1);
    cam = new PeasyCam(this,1000);
    noiseDetail(4);
}

void draw() {
  background(0);

  noiseX = 0.0;
  noiseY = yOffset;

  translate(-res*gridSize/2, -res*gridSize/2, 0);


  for (int y = 0; y < res; y++) {
    noFill();
    beginShape();
    for (int x = 0; x < res; x++) {
      float z = noise(noiseX, noiseY) * 800.0;
      float alpha = map(y, 0, 60, 0, 255);
      stroke(z,255,z, alpha);
      vertex(x*gridSize, y*gridSize, z);
      noiseX = noiseX + step;
    }
    noiseX = 0.0;
    noiseY = noiseY + step;
    endShape();
  }
  
  yOffset += step/6.0;
}