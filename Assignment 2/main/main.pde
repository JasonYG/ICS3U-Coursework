int screen = 0;
void settings() {
}
void setup() {
}
void draw() {
  switch (screen) {
  case 0:
    registrationScreen();
    break;
  }
}
void registrationScreen() {
  Credentials.register();
}