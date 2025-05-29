PShape purpleCandy;

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


  void display() {
    if (candyColor.equals("orange")) {
    fill(255, 165, 0);
    ellipse(0, 0, 50, 80);
    }

   if (candyColor.equals("green")) {
    fill(0, 255, 0);
    square(0, 0, 80);
    }
    
    if (candyColor.equals("blue")) {
    fill(0, 0, 255);
    ellipse(0, 0, 80, 80);
    }
    
    purpleCandy = createShape();
    purpleCandy.beginShape();
    purpleCandy.fill(128, 0, 128);
    purpleCandy.noStroke();
    purpleCandy.vertex(0, 0);
    purpleCandy.vertex(40, 0);
    purpleCandy.vertex(20, 20);
    purpleCandy.vertex(100
    

  }

}
