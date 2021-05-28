TreeNode tree;
TreeNode current;
String s="Welcome to the College Game! Press an arrow to help choose a college!";
BinarySearchTree t;
Scenes sc;
boolean one=false;
boolean two=false;
boolean three=false;
boolean four=false;
boolean five=false;
boolean six=false;
boolean seven=false;
boolean eight=false;
boolean zero=false;
private int levelCount=0;

void setup() {
  size(800, 600);
  t=new BinarySearchTree();
  tree=t.buildTree();
  current=tree;
  sc=new Scenes();
}

void draw() {
  background(0);
  fill(255);
  textSize(20);
  text(s, 60, height/2);
  
  if (zero==true) {
    sc.scene0();
  } else if (one==true) {
    sc.scene1();
    text("play again? (press down arrow)", 200, 400);
  } else if (two==true) {
    sc.scene2();
    text("play again? (press down arrow)", 200, 400);
  } else if (three==true) {
    sc.scene3();
    text("play again? (press down arrow)", 200, 400);
  } else if (four==true) {
    sc.scene4();
    text("play again? (press down arrow)", 200, 400);
  } else if (five==true) {
    sc.scene5();
    text("play again? (press down arrow)", 200, 400);
  } else if (six==true) {
    sc.scene6();
    text("play again? (press down arrow)", 200, 400);
  } else if (seven==true) {
    sc.scene7();
    text("play again? (press down arrow)", 200, 400);
  } else if (eight==true) {
    sc.scene8();
    text("play again? (press down arrow)", 200, 400);
  } else {
    zero=true;
  }
}

void keyPressed() {
  check();

  if (keyCode == LEFT) {
    
    s=(String)current.getValue();
    System.out.println(s);

    if (s.equals("Texas El Paso!")) {
      one=true;
      zero=false;
    } else if (s.equals("Augsburg in Minneapolis!")) {
      two=true;
      zero=false;
    } else if (s.equals("U of Iowa!")) {
      three=true;
      zero=false;
    } else if (s.equals("Stetson in Florida!")) {
      four=true;
      zero=false;
    } else if (s.equals("Coe College in Iowa!")) {
      five=true;
      zero=false;
    } else if (s.equals("U of Arizona!")) {
      six=true;
      zero=false;
    } else if (s.equals("U of Austin, TX!")) {
      seven=true;
      zero=false;
    } else if (s.equals("UMN!")) {
      eight=true;
      zero=false;
    } else {
      current= current.getLeft();
    }
  
} else if (keyCode == RIGHT) {
    
    s=(String)current.getValue();
    System.out.println(s);

    if (s.equals("Texas El Paso!")) {
      one=true;
      zero=false;
    } else if (s.equals("Augsburg in Minneapolis!")) {
      two=true;
      zero=false;
    } else if (s.equals("U of Iowa!")) {
      three=true;
      zero=false;
    } else if (s.equals("Stetson in Florida!")) {
      four=true;
      zero=false;
    } else if (s.equals("Coe College in Iowa!")) {
      five=true;
      zero=false;
    } else if (s.equals("U of Arizona!")) {
      six=true;
      zero=false;
    } else if (s.equals("U of Austin, TX!")) {
      seven=true;
      zero=false;
    } else if (s.equals("UMN!")) {
      eight=true;
      zero=false;
    } else {
      current= current.getLeft();
    }
  }
}

void check() {

  println(levelCount);
  if (levelCount>3&&keyCode==DOWN) {
    println("play Again");
    zero=true;
    levelCount=0;
    current=tree;
    s="College Game Again! Really? press any arrow";
    System.out.println(s);
  }
  levelCount+=1;
}


interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
