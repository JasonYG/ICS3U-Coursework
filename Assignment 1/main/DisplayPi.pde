class Display {
  color shade = color(255, 255, 255); // Color of that digit
  String toDisplay; // String that is to be displayed
  float xPos, yPos; // Position on the screen of that digit

  // Constructor defined with the arguments 
  // of the digit, and its position on the screen
  Display(String str, float x, float y) {
    toDisplay = str;
    xPos = x;
    yPos = y;
  }
  // Constructor with just PI
  Display(String str) {
    toDisplay = str;
  }
  // Method to display the numbers
  void toScreen() {
    fill(shade);
    textAlign(LEFT);
    textFont(font);
    textSize(100);
    text(toDisplay, xPos, yPos);
  }
  /* Method to visualize PI
   @param stuff TO DO
   @javadocs
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