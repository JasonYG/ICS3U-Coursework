void settings() {
  size(400, 800);
}

void setup() {
  background(0);
}

void draw() {
  fill(mouseX, mouseY, 255);
  ellipse(mouseX, mouseY, 50, 50);
}