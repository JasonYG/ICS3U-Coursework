void settings() {
  ;
  size(800, 600);
}
void setup() {
}
void draw() {
  println("mouseX = " + mouseX);
  println("mouseY = " + mouseY);

  //top blue rect
  fill(#77B0F5);
  rect(0, 0, width, height/2);

  //sun
  noStroke();  
  fill(#FCF500);
  ellipse(170, height/2, 100, 100);

  //sun lines
  stroke(#FCF500);
  strokeWeight(3);
  line(170, height/2-80, 170, height/2);

  line(170 - 25, height/2-75, 170, height/2);
  line(170 + 25, height/2-75, 170, height/2);
  line(170 - 50, height/2-65, 170, height/2);
  line(170 + 50, height/2-65, 170, height/2);
  line(170 - 65, height/2-50, 170, height/2);
  line(170 + 65, height/2-50, 170, height/2);
  line(170 - 80, height/2-30, 170, height/2);
  line(170 + 80, height/2-30, 170, height/2);
  line(170 - 80, height/2-10, 170, height/2);
  line(170 + 80, height/2-10, 170, height/2);


  stroke(0);
  strokeWeight(1);
  //bottom green rect
  fill(#1CEA5C);
  rect(0, height/2, width, height/2);

  //house rect
  fill(#F0617B);
  rect(539, 248, 150, 100);

  //door
  fill(255);
  rect(595, 270, 35, 70);

  //doorknob
  fill(0);
  ellipse(602, 300, 8, 8);

  //roof
  fill(0);
  triangle(610, 200, 535, 248, 695, 248);
}