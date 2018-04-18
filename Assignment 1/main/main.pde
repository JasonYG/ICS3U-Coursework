Pi test = new Pi(22);
void settings() {
  size(600, 600);
}
void setup() {
  noLoop();
}
void draw() {
  // INACCURACIES IN DIGITS
  print(test.calculate());
}