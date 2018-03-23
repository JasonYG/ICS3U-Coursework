void settings() {
  size(400, 800);
}

void setup() {
  colorMode(HSB, 255, 255, 255);
}

void draw() {
  background(255);
  noStroke();
  for (int i = 0; i < mouseX; i+=10) {
     for (int j = 0; j < mouseY; j+=10) {
       fill((i*j)%255,255, 255);
      ellipse(i + 5, j + 5, 10, 10); 
     }
  }
}