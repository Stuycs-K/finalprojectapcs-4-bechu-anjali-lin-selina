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
  }
  
}
