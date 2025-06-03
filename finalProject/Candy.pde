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
  // 1 is striped (up)   black
  // 2 is striped (across)   white
  // 3 is wrapped    lighter shade of the color
  // 4 is bomb   color but a darker shade 
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
    ellipse(x*100 +50, y*100 +50, 40, 60);
    
    if (special == 1) 
   {
     stroke(0, 0, 0);
     strokeWeight(3);
   }
   
   if (special == 2) 
   {
     stroke(255, 255, 255);
     strokeWeight(3);
   }
   
   if (special == 3) 
   {
     stroke(255, 140, 0);
     strokeWeight(3);
   }
   
   if (special == 4) 
   {
     stroke(255, 213, 128);
     strokeWeight(3);
   }
  }

   if (candyColor.equals("green")) {
      noStroke();
    fill(150, 220, 144);
    square(x*100 +20, y*100 +20, 60);
if (special == 1) 
   {
     stroke(0, 0, 0);
     strokeWeight(3);
   }
   
   if (special == 2) 
   {
     stroke(255, 255, 255);
     strokeWeight(3);
   }
   
   if (special == 3) 
   {
     stroke(144, 238, 144);
     strokeWeight(3);
   }
   
   if (special == 4) 
   {
     stroke(0, 255, 0);
     strokeWeight(3);
   }
    }
    
    if (candyColor.equals("blue")) {
       noStroke();
    fill(173, 216, 255);
    ellipse(x*100 +50, y*100 +50, 60, 60);
if (special == 1) 
   {
     stroke(0, 0, 0);
     strokeWeight(3);
   }
   
   if (special == 2) 
   {
     stroke(255, 255, 255);
     strokeWeight(3);
   }
   
   if (special == 3) 
   {
     stroke(173, 216, 230);
     strokeWeight(3);
   }
   
   if (special == 4) 
   {
     stroke(0, 0, 255);
     strokeWeight(3);
   }
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
      pc.noStroke();
      
      if (special == 1) 
   {
     pc.stroke(0, 0, 0);
     pc.strokeWeight(3);
   }
   
   if (special == 2) 
   {
     pc.stroke(255, 255, 255);
     pc.strokeWeight(3);
   }
   
   if (special == 3) 
   {
     pc.stroke(203, 195, 227);
     pc.strokeWeight(3);
   }
   
   if (special == 4) 
   {
     pc.stroke(48, 25, 52);
     pc.strokeWeight(3);
   }
      shape(pc, x*100, y*100);
    }
    
 
    if (candyColor.equals("red")) {
      gumdrop.noStroke();
      if (special == 1) 
   {
     gumdrop.stroke(0, 0, 0);
gumdrop.strokeWeight(3);
   }
   
   if (special == 2) 
   {
     gumdrop.stroke(255, 255, 255);
     gumdrop.strokeWeight(3);
   }
   
   if (special == 3) 
   {
     gumdrop.stroke(203, 195, 227);
     gumdrop.strokeWeight(3);
   }
   
   if (special == 4) 
   {
     gumdrop.stroke(48, 25, 52);
     gumdrop.strokeWeight(3);
   }
         shape(gumdrop, x*100, y*100);
    }
    

    if (candyColor.equals("yellow")) {
       lollipop.noStroke();
      if (special == 1) 
   {
     lollipop.stroke(0, 0, 0);
     lollipop.strokeWeight(3);
   }
   
   if (special == 2) 
   {
     lollipop.stroke(255, 255, 255);
     lollipop.strokeWeight(3);
   }
   
   if (special == 3) 
   {
     lollipop.stroke(203, 195, 227);
     lollipop.strokeWeight(3);
   }
   
   if (special == 4) 
   {
     lollipop.stroke(48, 25, 52);
     lollipop.strokeWeight(3);
   }
     
      shape(lollipop, x*100, y*100);
    }
    
    stroke(0);
    strokeWeight(1);
  }
  

}
