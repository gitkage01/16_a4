import processing.sound.*;
SoundFile file;
Firework tr1;
Firework tr2;
Firework tr3;
vehicle v;
PImage star;
PShape ufo;
Ufo u1;

void setup() {
  size(1280, 720);
  background(25, 25, 112);
  frameRate(120);
  file = new SoundFile(this, "sound1.wav");
  star = loadImage("star1.png");
  tr1 = new Firework();
  tr1.x = width/2;
  tr1.y = height/2;
  tr1.rotateVal = 0;
  tr1.speed_x = 3;
  tr1.speed_y = 3;
  tr1.direction_x = tr1.direction_y = 1;
  tr2 = new Firework();
  tr2.x = width/2;
  tr2.y = height/2;
  tr2.rotateVal = 0;
  tr2.speed_x = 3;
  tr2.speed_y = 3;
  tr2.direction_x = tr2.direction_y = 1;
  tr3 = new Firework();
  tr3.x = width/2;
  tr3.y = height/2;
  tr3.rotateVal = 0;
  tr3.speed_x = 3;
  tr3.speed_y = 3;
  tr3.direction_x = tr3.direction_y = 1;
  v=new vehicle();
  v.speed=2.9;
  v.x=0;
  v.y=500;
  v.a=15;
  v.c=55;
  v.rot_speed=5;
  u1 = new Ufo();
  u1.x = 0;
  u1.y = 0;
  u1.speed_x = 3;
  u1.speed_y = 1.5;
  u1.lx = 95;
  u1.ly = 50;
  u1.l1 = 20;
  u1.l2 = 50;
}

void draw() {
  background(0);
  fill(72, 61, 139);
  rect(0, 0, 1280, 720);
  tr1.move();
  tr1.display();
  tr2.move();
  tr2.display();
  tr3.move();
  tr3.display();
  v.move();
  v.rot();
  if (v.x<850){
    v.display();
  }
  if (v.x>850 && v.x<853){
    file.play();
  }
  fill(0, 0, 0);
  rect(0, 568, 1280, 152);  
  
  u1.display();
  if (u1.x < 900) {
    u1.move();
    if (u1.l1 <= u1.lx + 60) {
      u1.rotor();
    }
    if (u1.l1 > u1.lx + 60) {
      u1.l1 = u1.lx - 36;
    }
  }
  

  if (u1.x >= 900) {
    u1.speed_x = 0;
    u1.speed_y = -20;
    u1.move();
    if (u1.l1 <= u1.lx + 60) {
      u1.rotor();
    }
    if (u1.l1 > u1.lx + 60) {
      u1.l1 = u1.lx - 60;
    }
  }
}