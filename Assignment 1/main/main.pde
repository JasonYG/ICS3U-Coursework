/**
 * This program was developed for assignment 1 of the ICS3U course. It calculates
 * digits of pi using Chudnovsky's algorithm, and visualizes them to the screen.
 *
 * @author Jason Guo
 * @since May 1, 2018
 * @version 1.0 
 */

Pi test = new Pi();
BigDecimal pi;
Display[] digits = new Display[10]; // Array of Display objects to display on screen
Display visualizePi;

PFont font;
int screen = -1;

int counter = 0;
void settings() {
  size(600, 600);
}
void setup() {
  font = createFont("futura light.ttf", 50);
  for (int i = 0; i < digits.length; i++) {
    digits[i] = new Display(str(i), width * i/5 % width + 25, i < digits.length/2 ? 300 : 400);
  }
}
void draw() {
  if (screen == -1) {
    colorMode(RGB, 255);
    if (!test.calculated) {
      pi = test.calculate();
      background(0);
      visualizePi = new Display(pi.toString());
      float timer = millis();
      println("The calculation took " + str(timer/1000) + " seconds");
    } else {
      titleText();
      delay(500); //Adds a 0.5 second delay between updating digits
      updateDigits(pi.toString(), counter);
     
      for (Display digit : digits) {
        digit.toScreen();
      }
      counter += 1;
    }
  } else if (screen == 1) {
    colorMode(HSB, 255);
    visualizePi.visualize();
  }
}
// Updates color of digits
void updateDigits(String number, int index) {
  int digit = int(str(number.charAt(index)));
  for (int i = 0; i < digits.length; i++) {
    digits[i].shade = (i == digit) ? color(255, 0, 0) : color(255);
  }
}

void titleText() {
  fill(255);
  textAlign(CENTER);
  textFont(font);
  textSize(100);
  text("DIGITS OF PI", width/2, 150);
}

// Changes screen whenever a key is pressed
void keyPressed() {
  background(0);
  screen *= -1;
}