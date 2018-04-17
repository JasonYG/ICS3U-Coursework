Pi test = new Pi(5);
void settings() {
  size(600, 600);
}
void setup() {
  noLoop();
}
void draw() {
  print(test.calculate());
}