class Tracker {
  private int moves;
  private int score;
  private int goal;
  
  int getMoves() {
    return moves;
  }
  
  int getScore() {
    return score;
  }
  
  int getGoal() {
    return goal;
  }
  
  void decreaseMoves() {
    if (moves > 0) {
      moves--;
    }
  }
  
  /*
  5 points for a match of 3
  8 points for striped
  10 points for wrapped
  150 points for the bomb
  */
  
  public void increaseScore(int s) {
    score += s;
  }
  
  
  public void progressGoal (int g) {
   while (goal>=0) {
     goal -= g;
   }
  }
}
