void settings() {
  size(800, 800);
}
void setup() {
  background(255);
}
void draw() {
  background(255);
  noFill();

  stroke(#FA8080);
  strokeWeight(30);
  arc(width/2-40, height/3+40, 500, 500, HALF_PI + 0.1, PI + HALF_PI + 0.1);
  arc(width/2+40, 2*height/3-20, 500, 500, PI + HALF_PI + 0.2, TWO_PI + HALF_PI + 0.1);

  //yellow
  stroke(#D7FA80);
  strokeWeight(30);
  arc(width/2-60, height/3+40, 540, 500, HALF_PI + 0.1, PI + HALF_PI);
  arc(width/2+30, 2*height/3-30, 500, 500, PI + HALF_PI, TWO_PI + HALF_PI);

  //green
  stroke(#80FA80);
  strokeWeight(20);
  arc(width/2-40, height/3+25, 500, 500, HALF_PI, PI + HALF_PI-0.2);
  arc(width/2-10, 2*height/3+15, 500, 500, PI + HALF_PI, TWO_PI + HALF_PI-0.2);
  
  //blue
  stroke(#8092FA);
  strokeWeight(20);
  arc(width/2 - 35, height/3+20, 500, 500, HALF_PI + 0.3, PI + HALF_PI-0.2);
  
}