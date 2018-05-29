int screen = -2;
PFont font;
void settings() {
  size(600, 600);
}
void setup() {
  font = createFont("IBMPlexSans-Medium.ttf", 30);
}
void draw() {
  switch (screen) {
  case -1:
    registrationScreen();
    break;

  case -2:
    exerciseSelection();
    break;

  case 1:
    exercise1();
    break;
  case 2:
    exercise2();
    break;
  case 3:
    exercise3();
    break;
  case 4:
    exercise4();
    break;
  case 5:
    exercise5();
    break;
  case 6:
    exercise6();
    break;
  }
}
void registrationScreen() {
  background(255);

  fill(0);
  textAlign(CENTER);
  textFont(font);
  text("Welcome to Assignment 2", width/2, 200);

  fill(255);
  rect(0, 450, width/2, 150);
  fill(0);
  text("Login", width/4, 525);

  fill(255);
  rect(width/2, 450, width/2, 150);
  fill(0);
  text("Register", 3*width/4, 525);
}
void exerciseSelection() {
  background(255);
  int ypos = 10;
  for (int i = 0; i < 12; i++) {
    fill(255);
    rect((width * i/3) % width + 35, ypos, 125, 125);

    fill(0);
    textAlign(CENTER);
    textFont(font);
    text(i+1, (width * i/3) % width + 35 + 125/2, ypos + 125/2);

    if ((i+1) % 3 == 0) {
      ypos += 150;
    }
  }
}
void mousePressed() {
  if (screen == -1) {
    if (mouseX > 0 && mouseX < width/2 && mouseY > 450 && mouseY < height) {
      if (Credentials.login()) {
        screen = -2; 
        background(255);
      }
    }
    if (mouseX > width/2 && mouseX < width && mouseY > 450 && mouseY < height) {
      Credentials.register();
    }
  }
  if (screen == -2) {
    int ypos = 10;
    for (int i = 0; i < 12; i++) {
      if (mouseX > ((width * i/3) % width + 35) && mouseX < (width * i/3) % width + 35 + 125) {
        if (mouseY > ypos && mouseY < ypos + 125) {
          screen = i+1;
          if (i+1 == 4) {
            background(0);
          } else {
            background(255);
          }
          break;
        }
      }
      fill(0);
      textAlign(CENTER);
      textFont(font);
      text(i+1, (width * i/3) % width + 35 + 125/2, ypos + 125/2);

      if ((i+1) % 3 == 0) {
        ypos += 150;
      }
    }
  }
}

void exercise1() {
  pushMatrix();
  scale(0.75);
  //top blue rect
  fill(#77B0F5);
  rect(0, 0, width*1.25, height/2*1.25);

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
  rect(0, height/2, width*1.25, height/2*1.25);

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
  popMatrix();
}
void exercise2() {
  background(255);
  noFill();

  //red
  stroke(#FA8080);
  strokeWeight(30);
  arc(width/2-40, height/3+40, 500, 500, HALF_PI + 0.1, PI + HALF_PI + 0.1);
  arc(width/2+40, 2*height/3-10, 500, 500, PI + HALF_PI + 0.2, TWO_PI + HALF_PI + 0.1);

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
  strokeWeight(15);
  arc(width/2 - 35, height/3+20, 500, 500, HALF_PI + 0.3, PI + HALF_PI-0.2);
  arc(width/2 + 30, 2*height/3-40, 500, 500, PI + HALF_PI + 0.1, TWO_PI + HALF_PI-0.1);

  //purple
  stroke(#C080FA);
  strokeWeight(10);
  arc(width/2 - 60, height/3 - 25, 500, 500, HALF_PI, PI + HALF_PI);
  arc(width/2 + 40, 2*height/3 - 55, 500, 500, PI + HALF_PI - 0.6, TWO_PI + HALF_PI);
}
void exercise3() {
  fill(mouseX, mouseY, 255);
  ellipse(mouseX, mouseY, 50, 50);
}

float d_ypos = 0;
float d_size = 5;
float d_fill = 0;

float r_xpos = 0;
float r_size = 5;
float r_fill = 0;

void exercise4() {
  noStroke();
  colorMode(HSB, 255, 255, 255);
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
void exercise5() {
}
void exercise6() {
}
