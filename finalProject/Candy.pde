PShape purpleCandy, purpleCandy2, circle, pc;
PShape lollipop, stick, circle2;
PShape gumdrop, top, bottom;
PShape gumdropWhite, whiteGumTop, whiteGumBottom;
PShape gumdropBlack, blackGumTop, blackGumBottom;
PShape blackCircleLolli, blackLollipop, blackStick;
PShape whiteCircleLolli, whiteLollipop, whiteStick;

PShape pcBlack, pcBlackLeft, pcCircleBlack, pcBlackRight;

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
   
   fill(245, 180, 100);
    ellipse(x*100 +50, y*100 +50, 50, 80);
  }

   if (candyColor.equals("green")) {
      noStroke();

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
    fill(150, 220, 144);
    square(x*100 +10, y*100 +10, 80);
    }
    
    if (candyColor.equals("blue")) {
       noStroke();

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
   fill(173, 216, 255);
    ellipse(x*100 +50, y*100 +50, 80, 80);
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
      if (special == 1) {
        pcBlack = createShape(GROUP);
        
        pushMatrix();
        translate(x * 100, y * 100);
        pcBlackLeft = createShape();
        pcBlackLeft.beginShape();
        pcBlackLeft.fill(0);
        pcBlackLeft.noStroke();
        pcBlackLeft.vertex(48, 50);
        pcBlackLeft.vertex(18, 32);
        pcBlackLeft.vertex(18, 68);
        pcBlackLeft.endShape(CLOSE);

        pcCircleBlack = createShape(ELLIPSE, 50, 50, 24, 24);
        pcCircleBlack.setFill(color(0));
        pcCircleBlack.setStroke(false);

        pcBlackRight = createShape();
        pcBlackRight.beginShape();
        pcBlackRight.fill(0);
        pcBlackRight.noStroke();
        pcBlackRight.vertex(42, 50);
        pcBlackRight.vertex(72, 32);
        pcBlackRight.vertex(72, 68);
        pcBlackRight.endShape(CLOSE);

        pcBlack.addChild(pcBlackLeft);
        pcBlack.addChild(pcCircleBlack);
        pcBlack.addChild(pcBlackRight);
        popMatrix();

        shape(pcBlack, x * 100, y * 100);
      }

      pc.setStroke(false);
      
   
   if (special == 2) 
   {
     pc.setStroke(color(255, 255, 255));
     pc.strokeWeight(3);
   }
   
   if (special == 3) 
   {
     pc.setStroke(color(203, 195, 227));
     pc.strokeWeight(3);
   }
   
   if (special == 4) 
   {
     pc.setStroke(color(48, 25, 52));
     pc.strokeWeight(3);
   }
      shape(pc, x*100, y*100);
    }
    
 
    if (candyColor.equals("red")) { 
      if (special == 1) {
        pushMatrix();
        translate(x * 100, y * 100);
        
        gumdropBlack = createShape(GROUP);

        blackGumTop = createShape(ELLIPSE, 50, 49, 36, 24);
        blackGumTop.setFill(color(0));
        blackGumTop.setStroke(false);
        gumdropBlack.addChild(blackGumTop);

        blackGumBottom = createShape();
        blackGumBottom.beginShape();
        blackGumBottom.fill(0);
        blackGumBottom.noStroke();
        blackGumBottom.vertex(33, 50);
        blackGumBottom.vertex(67, 50);
        blackGumBottom.vertex(72, 85);
        blackGumBottom.vertex(28, 85);
        blackGumBottom.endShape(CLOSE);
        gumdropBlack.addChild(blackGumBottom);

        shape(gumdropBlack, 0, 0);
        popMatrix();
      }
      if (special == 2) {
        pushMatrix();
        translate(x * 100, y * 100);
        
        gumdropWhite = createShape(GROUP);

        whiteGumTop = createShape(ELLIPSE, 50, 49, 36, 24);
        whiteGumTop.setFill(color(255));
        whiteGumTop.setStroke(false);
        gumdropWhite.addChild(whiteGumTop);

        whiteGumBottom = createShape();
        whiteGumBottom.beginShape();
        whiteGumBottom.fill(255);
        whiteGumBottom.noStroke();
        whiteGumBottom.vertex(33, 50);
        whiteGumBottom.vertex(67, 50);
        whiteGumBottom.vertex(72, 85);
        whiteGumBottom.vertex(28, 85);
        whiteGumBottom.endShape(CLOSE);
        gumdropWhite.addChild(whiteGumBottom);

        shape(gumdropWhite, 0, 0);
        popMatrix();
      }
      
      if (special == 3) {
        pushMatrix();
        translate(x * 100, y * 100);
        
         PShape gumdropLight = createShape(GROUP);

        PShape lightGumTop = createShape(ELLIPSE, 50, 49, 36, 24);
        lightGumTop.setFill(color(255, 204, 204));
        lightGumTop.setStroke(false);
        gumdropLight.addChild(lightGumTop);

        PShape lightGumBottom = createShape();
        lightGumBottom.beginShape();
        lightGumBottom.fill(255, 204, 204);
        lightGumBottom.noStroke();
        lightGumBottom.vertex(33, 50);
        lightGumBottom.vertex(67, 50);
        lightGumBottom.vertex(72, 85);
        lightGumBottom.vertex(28, 85);
        lightGumBottom.endShape(CLOSE);
        gumdropLight.addChild(lightGumBottom);

        shape(gumdropLight, 0, 0);
        popMatrix();
      }
      
      if (special == 4) {
        pushMatrix();
        translate(x * 100, y * 100);
        
         PShape gumdropDark = createShape(GROUP);

        PShape darkGumTop = createShape(ELLIPSE, 50, 49, 36, 24);
        darkGumTop.setFill(color(255, 0, 0));
        darkGumTop.setStroke(false);
        gumdropDark.addChild(darkGumTop);

        PShape darkGumBottom = createShape();
        darkGumBottom.beginShape();
        darkGumBottom.fill(255, 0, 0);
        darkGumBottom.noStroke();
        darkGumBottom.vertex(33, 50);
        darkGumBottom.vertex(67, 50);
        darkGumBottom.vertex(72, 85);
        darkGumBottom.vertex(28, 85);
        darkGumBottom.endShape(CLOSE);
        gumdropDark.addChild(darkGumBottom);

        shape(gumdropDark, 0, 0);
        popMatrix();
      }
      

      gumdrop.setStroke(false);
 
         shape(gumdrop, x*100, y*100);
    }
    

    if (candyColor.equals("yellow")) {
      if (special == 1) {
        pushMatrix();
        translate(x * 100, y * 100);
        blackLollipop = createShape(GROUP);

        blackCircleLolli = createShape(ELLIPSE, 50, 50, 36, 36);
        blackCircleLolli.setFill(color(0));
        blackCircleLolli.setStroke(false);
        blackLollipop.addChild(blackCircleLolli);

        blackStick = createShape(RECT, 46, 55, 8, 35, 10);
        blackStick.setFill(color(0));
        blackStick.setStroke(false);
        blackLollipop.addChild(blackStick);
    
        shape(blackLollipop, 0, 0);
        popMatrix();
      }
      if (special == 2) {
        pushMatrix();
        translate(x * 100, y * 100);
        whiteLollipop = createShape(GROUP);

        whiteCircleLolli = createShape(ELLIPSE, 50, 50, 36, 36);
        whiteCircleLolli.setFill(color(255));
        whiteCircleLolli.setStroke(false);
        whiteLollipop.addChild(blackCircleLolli);

        whiteStick = createShape(RECT, 46, 55, 8, 35, 10);
        whiteStick.setFill(color(0));
        whiteStick.setStroke(false);
        whiteLollipop.addChild(whiteStick);
    
        shape(whiteLollipop, 0, 0);
        popMatrix();
      }
       lollipop.setStroke(false);
  
   if (special == 3) 
   {
     lollipop.setStroke(color(203, 195, 227));
     lollipop.strokeWeight(3);
   }
   
   if (special == 4) 
   {
     lollipop.setStroke(color(48, 25, 52));
     lollipop.strokeWeight(3);
   }
     
      shape(lollipop, x*100, y*100);
    }
    
    stroke(0);
    strokeWeight(1);
  }
  

}
