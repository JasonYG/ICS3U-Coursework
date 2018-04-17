float xpos, ypos, fillColor; //x position, y position, and fill colour of the circles
void settings() {
  size(400, 800);
}
void setup() {
  background(0);
  colorMode(HSB, 255, 255, 255);
  xpos = 0;
  ypos = 0;
  fillColor = 0;
}
void draw() {
  fill(fillColor, 255, 255);
  ellipse(xpos, ypos, 50, 50);
  
  xpos += 0.3;
  ypos += 6;
  if (ypos > height) {
    ypos -= height;
    fillColor -= 380;
  }
  
  fillColor += 3;
}