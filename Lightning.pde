void setup()
{
  size(800, 600);
  strokeWeight(2);
  background(0);
}
void draw()
{
  background(0);

  stroke(150, 200, 255); // light blue
  for (int i = 0; i < 100; i++) {
    float x = random(800);
    float y = random(600);
    line(x, y, x, y + 10);
}
void mousePressed()
{
  drawLightning();
}

void drawLightning() {
  strokeWeight(5);
  stroke(255); // white lightning
  float x = 400; // start in the middle horizontally
  float y = 0;         // start at the top

  while (y < 600) {
    float newX = x + random(-10, 10);  
    float newY = y + random(10, 20);   
    line(x, y, newX, newY);
    x = newX;
    y = newY;
  }
}
