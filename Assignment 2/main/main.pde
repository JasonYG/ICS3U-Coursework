int screen = 0;
PFont font;
void settings() {
  size(600, 600);
}
void setup() {
  font = createFont("IBMPlexSans-Medium.ttf", 30);
}
void draw() {
  switch (screen) {
  case 0:
    registrationScreen();
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
void mousePressed() {
  if (screen == 0) {
    if (mouseX > 0 && mouseX < width/2 && mouseY > 450 && mouseY < height) {
      Credentials.login();
    }
    if (mouseX > width/2 && mouseX < width && mouseY > 450 && mouseY < height) {
      Credentials.register();
    }
  }
}