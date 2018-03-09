void settings() {
  size(400, 800);
}
void setup() {
  colorMode(HSB, 255, 255, 255);
}
void draw() {
  background(255);
  //top half
  stroke(0);
  for (int i = 0; i < width; i += 20) {
    for (int j = 0; j < height/2; j += 20) {
      fill((i*0.05) + (j*0.6), 255, 255);
      ellipse(i + 10, j + 10, 20, 20);  
    }
  }
  //bottom half
  noStroke();
  for (int i = 300; i > 0; i --) {
    fill(i*0.7, 255, 255);
    ellipse(width/2, 3*height/4, i, i);  
  }
}