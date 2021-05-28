public class Scenes implements Comparable {
  PImage img;
  public Scenes() {
  }

  void scene0() {
    img = loadImage("data/blue.jpg");
    image(img, 0, 0, 400, 200);
  }

  void scene1() {
    img = loadImage("data/txel.png");
    image(img, 0, 0, 400, 200);
  }
  
  void scene2() {
    img = loadImage("data/augs.jpg");
    image(img, 0, 0, 400, 200);
  }
  
  void scene3(){
  img = loadImage("data/Iowa_1.jpg");
    image(img, 0, 0, 400, 200);
  }
  
  void scene4(){
  img = loadImage("data/stetson.jpg");
    image(img, 0, 0, 400, 200);
  }
  
  void scene5(){
  img = loadImage("data/coe.jpg");
    image(img, 0, 0, 400, 200);
  }
  
  void scene6(){
  img = loadImage("data/u-arizona.jpg");
    image(img, 0, 0, 400, 200);
  }
  
  void scene7(){
  img = loadImage("data/UT Austin.jpg");
    image(img, 0, 0, 400, 200);
  }
  
  void scene8(){
    img = loadImage("data/si-UMN.jpg");
    image(img, 0, 0, 400, 200);
  }
  
  int compareTo(Object o) {
    return -1;
  }
}
