class Firework {
  float x, y, diameter, speed_x, speed_y, direction_x, direction_y, hue;
  Firework() {}
  
  void move() {
    this.x += (this.speed_x * this.direction_x);
    this.y += (this.speed_y * this.direction_y);
    if (this.x > width) {
      this.x = 0;
      this.y = random(0, height);
      this.direction_y = random(-1, 1);
      this.direction_x = 1 ;
    }
    if (this.x < 0) {
      this.x = width;
      this.y = random(0, height);
      this.direction_y = random(-1, 1);
      this.direction_x = -1;
    }
    if (this.y > height) {
      this.x = random(0, width);
      this.y = 0;
      this.direction_x = random(-1, 1);
      this.direction_y = 1;
    }
    if (this.y < 0) {
      this.x = random(0, width);
      this.y = height;
      this.direction_x = random(-1, 1);
      this.direction_y = -1;
    }
  }
  
  void colorize() {
    colorMode(HSB);
    this.hue = this.y/2;
    fill(this.hue, 100, 100);
  }
  
  void display() {
    ellipse(x, y, diameter, diameter);
  }
}