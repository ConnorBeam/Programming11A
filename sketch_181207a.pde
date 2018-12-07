int particleAmount = 100;
int opacity = 25;
color background = color(0);
Particle[] particle = new Particle[particleAmount];
void setup() {
  size(600, 600);
  opacity = int(map(opacity, 0, 100, 0, 255));
  for (int i = 0; i < particleAmount; i ++) {
    particle[i] = new Particle();
  }
}
void draw() {
  background(background);
  for (int i = 0; i < particleAmount; i++) {
    particle[i].update();
  }
}
class Particle {
  float xoff, yoff, coff, noisex, noisey, size;
  Particle() {
    size = int(random(10, 50));
    xoff = random(0.01, 10000);
    yoff = random(0.01, 10000);
    coff = random(0.01, 10000);
  }
  void update() {
    noStroke();
    fill(noise(yoff)*255, noise(xoff)*255, noise(coff)*255, opacity);
    xoff += random(0.01);
    yoff += random(0.01);
    coff += random(0.01);
    println(yoff + "REE" + xoff);
    noisex = noise(xoff) * width;
    noisey = noise(yoff) * height;
    ellipse(noisex, noisey, size, size);
  }
}
