PShape purpleCandy, purpleCandy2, circle, pc;
PShape lollipop, stick, circle2;
PShape gumdrop, top, bottom;

class Candy{
  private String candyColor;
  private int special;
  private int score;

  Candy(String candyColor, int special, int score) {
    this.candyColor = candyColor;
    this.special = special;
    this.score = score;
  }

   String getColor() {
    return candyColor;
  }

   int getScore() {
    return score;
  }
  // -1 is regular
  // 1 is striped (up)
  // 2 is striped (across)
  // 3 is wrapped
  // 4 is bomb
   int getSpecial() {
    return special;
  }

   void setSpecial(int s) {
    special = s;
  }

   void setScore(int s) {
    score = s;
  }


  void display(int x, int y) {
    if (candyColor.equals("orange")) {
      noStroke();
    fill(245, 180, 100);
    ellipse(x*100 +50, y*100 +50, 50, 80);
    stroke(0);
    }

   if (candyColor.equals("green")) {
      noStroke();
    fill(150, 220, 144);
    square(x*100 +10, y*100 +10, 80);
    stroke(0);
    }
    
    if (candyColor.equals("blue")) {
       noStroke();
    fill(173, 216, 255);
    ellipse(x*100 +50, y*100 +50, 80, 80);
    stroke(0);
    }
   
    
    pc = createShape(GROUP);
  
    purpleCandy = createShape();
    purpleCandy.beginShape();
    purpleCandy.fill(203, 150, 227);
    purpleCandy.noStroke();
    purpleCandy.vertex(45, 50);
    purpleCandy.vertex(75, 35);
    purpleCandy.vertex(75, 65);
    purpleCandy.endShape(CLOSE);
    
    circle = createShape(ELLIPSE, 48, 50, 20, 20);
    circle.setFill(color(203, 150, 227));
    circle.setStroke(false);
  
    purpleCandy2 = createShape();
    purpleCandy2.beginShape();
    purpleCandy2.fill(203, 150, 227);
    purpleCandy2.noStroke();
    purpleCandy2.vertex(50, 50);
    purpleCandy2.vertex(20, 35);
    purpleCandy2.vertex(20, 65);
    purpleCandy2.endShape(CLOSE);
    
    pc.addChild(purpleCandy);
    pc.addChild(purpleCandy2);
    pc.addChild(circle);
    
    
    gumdrop = createShape(GROUP);
    
    top = createShape(ELLIPSE, 50, 49, 31, 20);
    top.setFill(color(255, 130, 150));
    top.setStroke(false);
    gumdrop.addChild(top);
    
    bottom = createShape();
    bottom.beginShape();
    bottom.fill(255, 130, 150);
    bottom.noStroke();
    bottom.vertex(35, 50);
    bottom.vertex(65, 50);
    bottom.vertex(70, 80);
    bottom.vertex(30, 80);
    bottom.endShape(CLOSE);
    
    gumdrop.addChild(bottom);
    
lollipop = createShape(GROUP);
     circle2 = createShape(ELLIPSE, 50, 50, 30, 30);
    circle2.setFill(color(255, 255, 160));
    circle2.setStroke(false);
    lollipop.addChild(circle2);
    
    stick = createShape(RECT, 48, 55, 5, 30, 10);
    stick.setFill(color(255, 255, 160));
    stick.setStroke(false);
    lollipop.addChild(stick);
    
    if (candyColor.equals("purple")) {
      shape(pc, x*100, y*100);
    }
    
    if (candyColor.equals("red")) {
      shape(gumdrop, x*100, y*100);
    }
    
    if (candyColor.equals("yellow")) {
      shape(lollipop, x*100, y*100);
    }
  }
  

}
