int particleAmount = 10;
Particle[] particle = new Particle[particleAmount];
void setup() {
  size(600, 600);
  for (int i = 0; i < particleAmount; i ++) {
    particle[i] = new Particle();
  }
}
void draw() {
  background(100);
  for (int i = 0; i < particleAmount; i++) {
    particle[i].update();
  }
}
class Particle {
  float xoff, yoff, coff, noisex, noisey, size;
  Particle() {
    size = int(random(10, 50));
    xoff = random(0.01,10000);
    yoff = random(0.01,10000);
    coff = random(0.01,10000);
  }
  void update() {
    fill(noise(yoff)*255, noise(xoff)*255, noise(coff)*255, 128);
    xoff += random(0.01);
    yoff += random(0.01);
    coff += random(0.01);
    println(yoff + "REE" + xoff);
    noisex = noise(xoff) * width;
    noisey = noise(yoff) * height;
    ellipse(noisex, noisey, size, size);
  }
}
