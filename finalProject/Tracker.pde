class Tracker {
  private int moves;
  private int score;
  private int goal;
  
  Tracker (int moves, int goal) {
    this.goal = goal;
    this.moves = moves;
    score = 0;
  }
  
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
  
  void increaseScore(int s) {
    score += s;
  }
  
  
  void progressGoal (int g) {
   while (goal>=0) {
     goal -= g;
   }
  }
  
  boolean win() {
    return goal == 0;
  }
  
  boolean gameOver() {
    return (goal == 0) || (moves == 0);
  }
}
