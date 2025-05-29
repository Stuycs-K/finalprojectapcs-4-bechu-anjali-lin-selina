CandyBoard game;
Tracker scores;
int[] selected1, selected2;

void selectSpace(){
}


 void setup() {
   size(1200, 900);
    for(int i= 0; i <=900;i+=100){
      line(0,i,900,i);
      line(i,0,i,900);
    }
    game = new CandyBoard();
    for(int i = 0; i < 9; i++){
      for(int j = 0; j < 9; j++){
        Candy temp = game.getBoard()[j][i];
        temp.display(i,j);
      }
    }
    scores = new Tracker(30,3000);
    textSize(40);
    fill(0);
    text("Moves Left: ", 950, 100);
    text(scores.getMoves() + "", 1025,200);
    text("Current Score: ", 925, 400);
    text(scores.getScore() + "", 1025,500);
    text("Goal Score: ", 950, 700);
    text(scores.getGoal() + "", 1000,800);
 }
 
 void display() {
   
   
   
   
   
   
   //code for when the game ends
   if (scores.win() || scores.gameOver()) {
     fill(255);
     rect(0, 0, 900, 900);
     textSize(200);
     if (scores.win()) {
       text("You Win!", 950, 200);
     } else {
       text("Game Over!", 950, 200);
     }
   }
     
     
     
 }
