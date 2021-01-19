
//Group Number: 2
//fix the snow and maybe the car's motion
//work together, submit indivdually...due b4 next class!
SnowFlake []s;
Car []j;
Car []t;
void setup() {
  size(900, 400);
  colorMode(HSB);
  s=new SnowFlake[100];
  for (int i=0; i<s.length; i++) {
    s[i]=new SnowFlake();
  }
  j=new Car[7];
  for (int i=0; i<j.length; i++){
    j[i]=new Car(50, 290, random(1, 360), random(1, 2));
  }
  t=new Car[5];
  for (int i=0; i<t.length; i++){
    t[i]=new Car(50, 170, random(1,360), random(1,7));
  }
  //jeep=new Car(100, 290, random(1, 360), random(1, 2));
  //toyota=new Car(100, 170, random(1, 360), random(1, 7));
}
void draw() {
  background(50);
  for (int i=0; i<s.length; i++) {
    s[i].fall();
    s[i].fallAgain();
    s[i].display();
  }
  for (int i=0; i<j.length; i++) { 
   j[i].displayCar();
  j[i].moveCar();
  j[i].resetCar();
  }
  for (int i=0; i<t.length; i++) {
  t[i].displayCar();
  t[i].moveCar();
  t[i].resetCar();
  }
}
public interface Flake {
  public void display();//however you want a flake to look
  public void fall();//uses Math.random() somehow...might fall in an unusual way, that's ok
  public void fallAgain();//flake reaches bottom, then falls again
}
class SnowFlake implements Flake {
  float x, y, xSpeed, ySpeed, r;
  float yVelocity=1;
  float yDamping=1;
  float xFriction=1;
  
  public SnowFlake() {
    x=(float)(Math.random()*width);
    y=(float)(Math.random()*height);
  }
  void display() {
    fill(255);
    ellipse(x, y, 10, 10);
  }
  void fall() {
    y*=yVelocity;
    y+=(float)((Math.random()*1));
    x+=(float)((Math.random()*1));
  }
  void fallAgain() {
    if (y>height) {
      y=0;
    }
    if (x>width) {
      x=0;
    }
  }
}

public interface Cars {
  public void displayCar();
  public void moveCar();
  public void resetCar();
}
class Car {
  float x;
  float y;
  float paint;
  float speed;
  public Car(float tempX, float tempY, float tempPaint, float tempSpeed) {
    //float damping;
    this.x = tempX;
    this.y = tempY;
    this.paint = tempPaint;
    this.speed = tempSpeed;
  }
  void displayCar() {
    rectMode(CENTER);
    fill(this.paint, 255, 255);
    rect(this.x - 10, this.y - 30, 50, 20);
    rect(this.x, this.y - 10, 75, 20);
    fill(212, 242, 252);
    rect(this.x + 5, this.y - 30, 15, 15);
    fill(0);
    ellipse(this.x - 25, this.y, 20, 20);
    ellipse(this.x + 25, this.y, 20, 20);
  }
  void moveCar() {
    this.x += this.speed;
  }
  void resetCar() {
    if (this.x>width+50){
      this.x=-20;
      this.paint=(float)(Math.random()*255);
    }
  }
}
