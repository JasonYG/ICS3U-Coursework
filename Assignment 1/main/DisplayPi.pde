/**
 * Class that is used to display pi
 *
 * @author Jason Guo
 * @since May 2, 2018
 * @version 1.0
 */
class Display {
  color shade = color(255, 255, 255); // Color of that digit
  String toDisplay; // String that is to be displayed
  float xPos, yPos; // Position on the screen of that digit

  /**
   * Constructor for the Display
   *
   * @param str the digit to be displayed
   * @param x the x coordinate of the digit
   * @param y the y coordinate of the digit
   */
  Display(String str, float x, float y) {
    toDisplay = str;
    xPos = x;
    yPos = y;
  }
  /**
   * Constructor for the visualization
   *
   * @param str the string to be displayed
   */
  Display(String str) {
    toDisplay = str;
  }
  /**
   * Method that displays the 10 digits to the screen
   */
  void toScreen() {
    fill(shade);
    textAlign(LEFT);
    textFont(font);
    textSize(100);
    text(toDisplay, xPos, yPos);
  }
  /** 
   * Method to visualize pi
   *
   * This method accesses the pixel array, and updates each individual pixel
   * based on a digit of pi
   */
  void visualize() {
    // Load pixel array
    loadPixels();
    String[] piString = toDisplay.toString().split("");
    // Colours the pixels
    for (int i = 0; i < pixels.length; i++) {
      color fillValue = color(map(int(piString[i]), 0, 9, 0, 255), 255, 255);
      pixels[i] = fillValue;
    }
    // Update the pixels 
    updatePixels();
  }
}