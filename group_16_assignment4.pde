Firework tr1;
Firework tr2;
Firework tr3;

void setup() {
  size(1280, 720);
  background(0, 0, 0);
  frameRate(120);
  tr1 = new Firework();
  tr1.x = width/2;
  tr1.y = height/2;
  tr1.diameter = 20;
  tr1.speed_x = 5;
  tr1.speed_y = 5;
  tr1.direction_x = tr1.direction_y = 1;
  tr2 = new Firework();
  tr2.x = width/2;
  tr2.y = height/2;
  tr2.diameter = 20;
  tr2.speed_x = 5;
  tr2.speed_y = 5;
  tr2.direction_x = tr2.direction_y = 1;
  tr3 = new Firework();
  tr3.x = width/2;
  tr3.y = height/2;
  tr3.diameter = 20;
  tr3.speed_x = 5;
  tr3.speed_y = 5;
  tr3.direction_x = tr3.direction_y = 1;
}

void draw() {
  background(0);
  tr1.move();
  tr1.colorize();
  tr1.display();
  tr2.move();
  tr2.colorize();
  tr2.display();
  tr3.move();
  tr3.colorize();
  tr3.display();

  
}