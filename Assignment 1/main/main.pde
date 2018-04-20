Pi test = new Pi(22);
void settings() {
  size(600, 600);
}
void setup() {
  noLoop();
}
void draw() {
  test.calculate();
  float timer = millis();
  println("The number of seconds of this program is: " + str(timer/1000));
}