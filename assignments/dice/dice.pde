int count=0, spareA, spareB=40, points;

void setup()
{
  noLoop();
  size(200, 200);
}
void draw()
{
  //your code here
  ArrayList<Die> Dice = new ArrayList<Die>();
  for(int i=0; i<9; i++){
    
    count++;;
    //create dice
    
    spareA = count * 40;
      if (spareA>120)
        spareA = 40;
    
    Dice.add(new Die(spareA, spareB));
    
    if (count==3){
      count=0;
      spareB+=40;
    }
      
  }
  for(int i=0; i<9; i++)
    Dice.get(i).show();
  
  println(points + " earned");
  /*Die what = new Die(0,0);
  what.show();*/
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  private int number=0;
  private int BaseAndHeight=36;
  private int positionX, positionY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    positionX = x;
    positionY = y;
    fill(255);
    rect(positionX, positionY, 36, 36);
    this.roll();
    println("present");
  }
  void roll()
  {
    //your code here
    int a = (int)(Math.random()*(7-1)+1); 
    number = a;
    print("roll");
    //println(a);
  }
  void show()
  {
    //your code here
    if (number==1){
      fill(0);
      ellipse(positionX+18, positionY+18, 5, 5 );
      println("i am in 1");
      points+=1;
    }
    if (number==2){
      fill(0);
      ellipse(positionX+9, positionY+9, 5, 5 );
      ellipse(positionX+27, positionY+27, 5, 5 );
      println("i am in 2");
      points+=2;
    }
    if (number==3){
      fill(0);
      ellipse(positionX+9, positionY+9, 5, 5 );
      ellipse(positionX+18, positionY+18, 5, 5 );
      ellipse(positionX+27, positionY+27, 5, 5 );
      println("i am in 3");
      points+=3;
    }
    if (number==4){
      fill(0);
      ellipse(positionX+9, positionY+9, 5, 5 );
      ellipse(positionX+27, positionY+9, 5, 5 );
      ellipse(positionX+9, positionY+27, 5, 5 );
      ellipse(positionX+27, positionY+27, 5, 5 );
      println("i am in 4");
      points+=4;
    }
    if (number==5){
      fill(0);
      ellipse(positionX+9, positionY+9, 5, 5 );
      ellipse(positionX+9, positionY+27, 5, 5 );
      ellipse(positionX+27, positionY+9, 5, 5 );
      ellipse(positionX+27, positionY+27, 5, 5 );
      ellipse(positionX+18, positionY+18, 5, 5 );
      println("i am in 5");
      points+=5;
    }
    if (number==6){
      fill(0);
      ellipse(positionX+9, positionY+9, 5, 5 );
      ellipse(positionX+9, positionY+18, 5, 5  );
      ellipse(positionX+9, positionY+27, 5, 5 );
      ellipse(positionX+27, positionY+9, 5, 5 );
      ellipse(positionX+27, positionY+18, 5, 5 );
      ellipse(positionX+27, positionY+27, 5, 5 );
      println("i am in 6");
      points+=6;
    }
  }
}
