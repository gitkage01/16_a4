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






class vehicle{
  float x, y, speed, a, b,c,d,rot_speed;
  vehicle(){}
  void display(){
    fill(255);
    rect(x,y,100,50);
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