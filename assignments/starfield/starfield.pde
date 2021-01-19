float x, y; 
double angle, speed;
Particle[]star;
NormalParticle[]stars;
OddParticle[]stars2;
Jumbo[]stars3;
void setup() {
  size(600, 600);
  star = new Particle[100];
  
  for (int i=0; i<star.length; i++) {
    if (i==0) {
      star[i] = new OddParticle((float)(Math.random()*550)+20, (float)(Math.random()*550)+20, 
        Math.random()*25, Math.random()*10, Math.random()*10);
    }
    if (i==1) {
      star[i] = new Jumbo((float)(Math.random()*550)+20, (float)(Math.random()*550)+20, 
        Math.random()*50+20, Math.random()*3, Math.random()*3);
    }
    if (i>1) {
      star[i] = new NormalParticle((float)(Math.random()*100+25), (float)(Math.random()*100+25), 
        Math.random()*50, Math.random()*5, Math.random()*5);
    }
  }
}

void draw() {
  //background(255);
  fill(255, 6);
  rect(0, 0, width, height);
  for (int i=0; i<star.length; i++) {
    star[i].move();
    star[i].show();
  }
}

public interface Particle {
  public void move();
  public void show();
}



class NormalParticle implements Particle {
  private float x, y; 
  private double angle, xspeed, yspeed;
  //private color one = 
  color c2 = color((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
  public NormalParticle(float xx, float yy, double anglle, double xspeeed, double yspeeed) {
    x=xx;
    y=yy;
    angle=anglle;
    xspeed=xspeeed;
    yspeed=yspeeed;
  }

  public void move() {
    //x+=xspeed*Math.cos(angle);
    //y+=yspeed*Math.sin(angle);
    x+=xspeed;
    x+=Math.cos(angle);
    y+=yspeed;
    y+=Math.sin(angle);
    
    if(x>700)
    xspeed*=-1;
    if(x<-100)
    xspeed*=-1;
    if(y>700)
    yspeed*=-1;
    if(y<-100)
    yspeed*=-1;
    
  }

  public void show() {
    fill(c2);
    ellipse(x, y, 15, 15);
  }
}

class OddParticle implements Particle {
  float x, y; 
   double angle, xspeed, yspeed;
   color c1 = color((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
  public OddParticle(float xx, float yy, double anglle, double xspeeed, double yspeeed) {
    x=xx;
    y=yy;
    angle=anglle;
    xspeed=xspeeed;
    yspeed=yspeeed;
  }

  public void move() {
    x+=xspeed*Math.sin(angle);
    y+=yspeed*Math.cos(angle);
    
    if(x>700)
    xspeed*=-1;
    if(x<-100)
    xspeed*=-1;
    if(y>700)
    yspeed*=-1;
    if(y<-100)
    yspeed*=-1;
  }

  public void show() {
    fill(c1);
    ellipse(x, y, (float)Math.random()*20, (float)Math.random()*20);
  }
}

class Jumbo extends OddParticle {


  public Jumbo(float xx, float yy, double anglle, double xspeeed, double yspeeed) {
    super(xx, yy, anglle, xspeeed, yspeeed);
  }

  public void move() {
    super.move();
  }

  public void show() {
    fill(c1);
    ellipse(x, y, (float)Math.random()*25, (float)Math.random()*25);
  }
}
//(float)Math.random()*25
