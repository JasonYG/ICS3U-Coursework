Pi test = new Pi(22);
BigDecimal pi;
Display[] digits = new Display[10]; // Array of Display objects to display on screen
PFont font;
int screen = -1;

int counter = 0;
void settings() {
  size(600, 600);
}
void setup() {
  font = loadFont("futura light.ttf");
  for (int i = 0; i < digits.length; i++) {
    digits[i] = new Display(str(i), width * i/5 % width + 25, i < digits.length/2 ? 200 : 300);
  }
}
void draw() {
  background(0);
  if (screen == -1) {
    if (!test.calculated) {
      pi = test.calculate();
      float timer = millis();
      println("The number of seconds of this program is: " + str(timer/1000));
    } else {
      updateDigits(pi.toString(), counter);
      for (Display digit : digits) {
        digit.toScreen();
      }
      counter += 1;
    }
  } else if (screen == 1) {
  }
}
// Updates color of digits
void updateDigits(String number, int index) {
  int digit = int(str(number.charAt(index)));
  for (int i = 0; i < digits.length; i++) {
    digits[i].shade = (i == digit) ? color(255, 0, 0) : color(255);
  }
}
// Changes the screen whenever a key
// is pressed 
void keyPressed() {
  screen *= -1;
}