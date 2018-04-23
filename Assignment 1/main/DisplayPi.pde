class Display {
  color shade = color(255, 255, 255); // Color of that digit
  String digit; // Specific digit of PI
  float xPos, yPos; // Position on the screen of that digit
  
  // Constructor defined with the arguments 
  // of the digit, and its position on the screen
  Display(String str, float x, float y) {
    digit = str;
    xPos = x;
    yPos = y;
  }
}