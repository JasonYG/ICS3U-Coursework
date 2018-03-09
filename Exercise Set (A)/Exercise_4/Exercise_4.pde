float r_xpos, r_size, r_fill; //x position, size, and colour of circles moving right
float d_ypos, d_size, d_fill; //y position, size, and colour of the circles moving downwards
void settings() {
  size(400, 800);
}
void setup() {
  noStroke();
  background(0);
  colorMode(HSB, 255, 255, 255);

  d_ypos = 0;
  d_size = 5;
  d_fill = 0;

  r_xpos = 0;
  r_size = 5;
  r_fill = 0;
}
void draw() {

  //circles moving down
  fill(d_fill%255, 255, 255);
  ellipse(width/2, d_ypos, d_size, d_size);
  d_ypos += 4.5;
  d_size += 1;
  d_fill += 2;

  //circles moving right
  ellipse(r_xpos, height/2, r_size, r_size);
  r_xpos += 0.5;
  r_size += 0.1;
}