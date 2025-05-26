class Candy {
  private String candyColor;
  private int special;
  private int score;
  
  Candy(String color, int special, int score) {
    candyColor = color;
    special = special;
    score = score;
  }
  
   String getColor() {
    return candyColor;
  }
  
   int getScore() {
    return score;
  }
  
   int getSpecial() {
    return special;
  }
  
   void setSpecial(int s) {
    special = s;
  }
  
   void setScore(int s) {
    score = s;
  }
  
}
