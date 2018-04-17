void setup() {
  size(300, 200);
}

void draw() {
  background(mouseX,255,0);
  drawRef();
  textSize(12);
  fill(0,0,255);
  text("Celsius: " + mouseX, 10, 10);
  text("Fahrenheit; " + fahrConverter(mouseX), 10, 25);
  rect(0, 30, mouseX, 35);
  //println(fahrConverter(33.3));
  //println(celConverter(33.3));
  //noLoop();
}

void drawRef() {
  //draw reference line with tick marks
  line(0, 75, width, 75);
  for (int i = 0; i<width; i+=20) {
    textSize(8);
    text(i, i-5, 90);
    line(i, 80, i, 70);
  }
}
float celConverter(float val) {
  val = (val-32)*(5.0/9.0);
  return val;
}

float fahrConverter(float val) {
  val = val*1.8 + 32;
  return val;
}