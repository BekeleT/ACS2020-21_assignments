int startX=0, startY=150, endX=0, endY=150;

void setup(){
  size(400, 400);
  strokeWeight(10);
  background(255, 122, 216);
  
}

void draw(){
  int boom = (int) (Math.random()*(255-1)+1);
  stroke(boom);
  int maxX=9;
  int minX=0;
  int maxY=9;
  int minY=-9;
  //(int) ((Math.random() * (max - min)) + min);

  while(endX<400){
    endX = startX + (int)(Math.random()*(maxX-minX)+minX);
    endY = startY + (int)(Math.random()*(maxY-minY)+minY);
    line(startX, startY, endX, endY); 
    startX=endX;
    startY=endY;
    System.out.println(endX + " " + endY);
  }
}

void mousePressed(){
  startX=0;
  startY=150;
  endX=0;
  endY=150;

}
