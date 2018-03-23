float [] values;
void settings() {
  size(400, 800);
}
void setup() {
  values = new float[50];
  for (int i = 0; i < 50; i++) {
    float val;
    if (i % 2 == 0) {
      val = random(width);
      values[i] = val;
    } else {
      val = random(height);
      values[i] = val;
    }
  }
  println(values);
}
void draw() {
  background(255);
  for (int i = 0; i < 50; i += 2) {
    float xpos = values[i];
    float ypos = values[i+1];
    if (ypos > height/2) {
      line(xpos, ypos, xpos, height);  
    } else {
      line(xpos, ypos, xpos, 0);
    }
  }
}


//", ".join(arrayname)