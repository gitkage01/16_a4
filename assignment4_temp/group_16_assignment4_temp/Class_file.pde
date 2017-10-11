class Firework {
  float x, y, rotateVal, speed_x, speed_y, direction_x, direction_y;
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
  
  void display() {
    imageMode(CENTER);
    pushMatrix();
    translate(x, y);
    rotate(rotateVal);
    image(star, 0, 0);
    popMatrix();
    rotateVal += 0.02;
  }
}

class vehicle{
  float x, y, speed, a, b,c,d,rot_speed;
  vehicle(){}
  void display(){
    fill(255, 0, 0);
    rect(x,y,100,50);
    fill(211, 211, 211);
    ellipse(x+30,y+50,30,30);
    ellipse(x+70,y+50,30,30);
    line(a,b,2*x+60-a,2*y+100-b);
    line(c,d,2*x+140-c,2*y+100-d);
  }
  void move(){
    this.x=this.x+this.speed;
      
  }
  void rot(){
    this.a+=rot_speed;
    this.c+=rot_speed;
    if(a>x+45){
      a=x+15;
    }
    else {
      b=y+50-sqrt(15*15-(a-x-30)*(a-x-30));
    }
    if(c>x+85){
      c=x+55;
    }
    else{
      d=y+50-sqrt(15*15-(c-x-70)*(c-x-70));
    }
    
  }
}

class Ufo {
  float x, y, a, b, speed, speed_x, speed_y, lx, ly, l1, l2;
  PShape ufo = createShape(GROUP);

  Ufo() {
    createUFO();
  }

  void createUFO() {
    fill(255, 255, 255);
    stroke(204, 102, 0);
    strokeWeight(4);
    PShape body = createShape(ELLIPSE, 100, 100, 90, 30);
    PShape body2 = createShape(ELLIPSE, 100, 80, 50, 50);
    fill(255, 255, 0);
    PShape light1 = createShape(ELLIPSE, 100, 100, 10, 10);
    PShape light2 = createShape(ELLIPSE, 70, 100, 10, 10);
    PShape light3 = createShape(ELLIPSE, 130, 100, 10, 10);
    
    
    ufo.addChild(body2);
    ufo.addChild(body);
    ufo.addChild(light1);
    ufo.addChild(light2);
    ufo.addChild(light3);
    
    shape(ufo, x, y);
    
  }
  
  void move() {
    this.x += this.speed_x;
    this.y += this.speed_y;
    this.lx += this.speed_x;
    this.ly += this.speed_y;
    this.l2 += this.speed_y;
    this.l1 += this.speed_x;
    
  }
  
  void rotor() {
    this.l1 += 24;
  }
  
  void display() {
    this.createUFO();
    line(lx, ly, l1, l2);

  }
}