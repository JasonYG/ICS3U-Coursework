Pi test = new Pi(22);
int screen = -1;
void settings() {
  size(600, 600);
}
void setup() {
  noLoop();
}
void draw() {
  if (screen == -1) {
    test.calculate();
    float timer = millis();
    println("The number of seconds of this program is: " + str(timer/1000));
  } else if (screen == -1) {
    
  }
}

// Changes the screen whenever a key
// is pressed 
void keyPressed() {
  println("men");
  screen *= -1;
}