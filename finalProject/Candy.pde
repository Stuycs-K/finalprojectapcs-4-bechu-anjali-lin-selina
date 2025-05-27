class Candy {
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
    if (candyColor == "orange") {
    size(400,400);
    fill(255, 165, 0);
    ellipse(0, 0, 100, 200);
    }
    
   if (candyColor == "green") {
    size(400,400);
    fill(255, 165, 0);
    square(0, 0, 200);
    }
    
    if (candyColor == "blue") {
    size(400,400);
    fill(255, 165, 0);
    ellipse(0, 0, 200, 200);
    }
    
  }
  
}
