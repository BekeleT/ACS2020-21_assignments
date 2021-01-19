Orb[] orbies = new Orb[100];
void setup() {
  size(600, 600);
  for (int i=0; i<orbies.length; i++) {
    orbies[i] = new Orb(width/2, height/2);
  }
}

void draw() {
  background(50, 210, 160);
  textSize(32);
  text(".", 10, 30);
  fill(0, 102, 153);
  for (int i=0; i<orbies.length; i++) {
   orbies[i].show(); 
   orbies[i].move();
  }
}

class Orb {
  int x, y, red, green, blue, size;
  public Orb(int xaxis, int yaxis) {
    this.x = xaxis;
    this.y = yaxis;
    this.red = (int) (Math.random()*256);
    this.green = (int) (Math.random()*256);
    this.blue = (int) (Math.random()*256);
    this.size = (int) (Math.random()*30);
  }
  void move() {
    x+= (int)(Math.random()*5)-2;
    y+= (int)(Math.random()*5)-2;
    if(mouseX>x)
      x+= (int)(Math.random()*7);
    else if(mouseX<x)
      x-= (int)(Math.random()*7);
    if(mouseY>y)
      y+= (int)(Math.random()*7);
    else if(mouseY<y)
      y-= (int)(Math.random()*7);
  }
  void show() {
    fill(red, green, blue);
    ellipse(x, y, 30, 30); 
  }
}
