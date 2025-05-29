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
