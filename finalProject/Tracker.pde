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
    if(s > 5){
      score+= 150;
    }else if(s < 6){
      score+= s* 10;
    }else if(s < 5){
      score+= s* 8;
    }else if(s < 4){
      score += s * 5;
    }
  }
  
  
  void progressGoal (int g) {
   if (goal>=0) {
     if(g > 5){
      goal -= 150;
    }else if(g < 6){
      goal -= g * 10;
    }else if(g < 5){
      goal -= g * 8;
    }else if(g < 4){
      goal -= g * 5;
    }
     
   }
  }
  
  boolean win() {
    return goal <= 0;
  }
  
  boolean gameOver() {
    return win() || (moves == 0);
  }
}
