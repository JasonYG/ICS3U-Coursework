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
          background(255);
          println(screen);
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
}
void exercise2() {
}
void exercise3() {
}
void exercise4() {
}
void exercise5() {
}
void exercise6() {
}