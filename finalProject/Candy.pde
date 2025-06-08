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
     stroke(255, 150, 40);
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
stroke(0, 155, 0);
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
stroke(173, 216, 255);
     strokeWeight(3);
   }
   
   if (special == 4) 
   {
stroke(0, 0, 200);
     strokeWeight(3);
   }
   fill(150, 200, 255);
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
    circle2.setFill(color(255, 255, 185));
    circle2.setStroke(false);
    lollipop.addChild(circle2);
    
    stick = createShape(RECT, 48, 55, 5, 30, 10);
    stick.setFill(color(255, 255, 185));
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

        pcCircleBlack = createShape(ELLIPSE, 48, 50, 24, 24);
        pcCircleBlack.setFill(color(0));
        pcCircleBlack.setStroke(false);

        pcBlackRight = createShape();
        pcBlackRight.beginShape();
        pcBlackRight.fill(0);
        pcBlackRight.noStroke();
        pcBlackRight.vertex(48, 50);
        pcBlackRight.vertex(78, 32);
        pcBlackRight.vertex(78, 68);
        pcBlackRight.endShape(CLOSE);

        pcBlack.addChild(pcBlackLeft);
        pcBlack.addChild(pcCircleBlack);
        pcBlack.addChild(pcBlackRight);
        popMatrix();

        shape(pcBlack, x * 100, y * 100);
      }
      
      if (special == 2) {
        PShape pcWhite = createShape(GROUP);
        
        pushMatrix();
        translate(x * 100, y * 100);
        PShape pcWhiteLeft = createShape();
        pcWhiteLeft.beginShape();
        pcWhiteLeft.fill(255);
        pcWhiteLeft.noStroke();
        pcWhiteLeft.vertex(48, 50);
        pcWhiteLeft.vertex(18, 32);
        pcWhiteLeft.vertex(18, 68);
        pcWhiteLeft.endShape(CLOSE);

        PShape pcCircleWhite = createShape(ELLIPSE, 48, 50, 24, 24);
        pcCircleWhite.setFill(color(255));
        pcCircleWhite.setStroke(false);

        PShape pcWhiteRight = createShape();
        pcWhiteRight.beginShape();
        pcWhiteRight.fill(255);
        pcWhiteRight.noStroke();
        pcWhiteRight.vertex(48, 50);
        pcWhiteRight.vertex(78, 32);
        pcWhiteRight.vertex(78, 68);
        pcWhiteRight.endShape(CLOSE);

        pcWhite.addChild(pcWhiteLeft);
        pcWhite.addChild(pcCircleWhite);
        pcWhite.addChild(pcWhiteRight);
        popMatrix();

        shape(pcWhite, x * 100, y * 100);
      }
      
      if (special == 3) {
        PShape pcLight = createShape(GROUP);
        
        pushMatrix();
        translate(x * 100, y * 100);
        PShape pcLightLeft = createShape();
        pcLightLeft.beginShape();
        pcLightLeft.fill(203, 195, 227);
        pcLightLeft.noStroke();
        pcLightLeft.vertex(48, 50);
        pcLightLeft.vertex(18, 32);
        pcLightLeft.vertex(18, 68);
        pcLightLeft.endShape(CLOSE);

        PShape pcCircleLight = createShape(ELLIPSE, 48, 50, 24, 24);
        pcCircleLight.setFill(color(203, 195, 227));
        pcCircleLight.setStroke(false);

        PShape pcLightRight = createShape();
        pcLightRight.beginShape();
        pcLightRight.fill(203, 195, 227);
        pcLightRight.noStroke();
        pcLightRight.vertex(48, 50);
        pcLightRight.vertex(78, 32);
        pcLightRight.vertex(78, 68);
        pcLightRight.endShape(CLOSE);

        pcLight.addChild(pcLightLeft);
        pcLight.addChild(pcCircleLight);
        pcLight.addChild(pcLightRight);
        popMatrix();

        shape(pcLight, x * 100, y * 100);
      }
      
      if (special == 4) {
        PShape pcDark = createShape(GROUP);
        
        pushMatrix();
        translate(x * 100, y * 100);
        PShape pcDarkLeft = createShape();
        pcDarkLeft.beginShape();
        pcDarkLeft.fill(130, 25, 130);
        pcDarkLeft.noStroke();
        pcDarkLeft.vertex(48, 50);
        pcDarkLeft.vertex(18, 32);
        pcDarkLeft.vertex(18, 68);
        pcDarkLeft.endShape(CLOSE);

        PShape pcCircleDark = createShape(ELLIPSE, 48, 50, 24, 24);
        pcCircleDark.setFill(color(130, 25, 130));
        pcCircleDark.setStroke(false);

        PShape pcDarkRight = createShape();
        pcDarkRight.beginShape();
        pcDarkRight.fill(130, 25, 130);
        pcDarkRight.noStroke();
        pcDarkRight.vertex(48, 50);
        pcDarkRight.vertex(78, 32);
        pcDarkRight.vertex(78, 68);
        pcDarkRight.endShape(CLOSE);

        pcDark.addChild(pcDarkLeft);
        pcDark.addChild(pcCircleDark);
        pcDark.addChild(pcDarkRight);
        popMatrix();

        shape(pcDark, x * 100, y * 100);
      }

      pc.setStroke(false);

  
   
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
        lightGumTop.fill(255, 199, 206);
        lightGumTop.setStroke(false);
        gumdropLight.addChild(lightGumTop);

        PShape lightGumBottom = createShape();
        lightGumBottom.beginShape();
        lightGumBottom.fill(255, 199, 206);
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
        darkGumTop.setFill(color(139, 0, 0));
        darkGumTop.setStroke(false);
        gumdropDark.addChild(darkGumTop);

        PShape darkGumBottom = createShape();
        darkGumBottom.beginShape();
        darkGumBottom.fill(139, 0, 0);
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
        whiteLollipop.addChild(whiteCircleLolli);

        whiteStick = createShape(RECT, 46, 55, 8, 35, 10);
        whiteStick.setFill(color(255));
        whiteStick.setStroke(false);
        whiteLollipop.addChild(whiteStick);
    
        shape(whiteLollipop, 0, 0);
        popMatrix();
      }
      if (special == 3) {
        pushMatrix();
        translate(x * 100, y * 100);
        PShape lightLollipop = createShape(GROUP);

        PShape lightCircleLolli = createShape(ELLIPSE, 50, 50, 36, 36);
        lightCircleLolli.fill(255, 245, 230);
        lightCircleLolli.setStroke(false);
        lightLollipop.addChild(lightCircleLolli);

        PShape lightStick = createShape(RECT, 46, 55, 8, 35, 10);
        lightStick.fill(255, 245, 230);
        lightStick.setStroke(false);
        lightLollipop.addChild(lightStick);
    
        shape(lightLollipop, 0, 0);
        popMatrix();
      }
      
      if (special == 4) {
        pushMatrix();
        translate(x * 100, y * 100);
        PShape darkLollipop = createShape(GROUP);

        PShape darkCircleLolli = createShape(ELLIPSE, 50, 50, 36, 36);
        darkCircleLolli.setFill(color(240, 240, 0));
        darkCircleLolli.setStroke(false);
        darkLollipop.addChild(darkCircleLolli);

        PShape darkStick = createShape(RECT, 46, 55, 8, 35, 10);
        darkStick.setFill(color(240, 240, 0));
        darkStick.setStroke(false);
        darkLollipop.addChild(darkStick);
    
        shape(darkLollipop, 0, 0);
        popMatrix();
      }
       lollipop.setStroke(false);
     
      shape(lollipop, x*100, y*100);
    }
    
   
    stroke(0);
    strokeWeight(1);
  }
  
  
  
  ///white, black, dark lollipop
// dark, black, white gumdrop
//black pc, white pc, dark pc doesnt work?   
}




///l shape for the blue makes ark blue
