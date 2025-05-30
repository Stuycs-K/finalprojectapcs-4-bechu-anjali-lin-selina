CandyBoard game;
Tracker scores;
int[] selected1 = {-1, -1};
int[] selected2 = {-1,-1};

void draw(){

}

void mouseClicked(){
  int x = mouseX/100;
  int y = mouseY/100;
  
  if(selected1[0]!=-1 && selected2[0]==-1){
      selected2[0]=x;
      selected2[1]=y;
      x=-2;
      y=-2;
    }
  
  
  if(selected1[0] == -1){
    selected1[0]=x;
    selected1[1]=y;
    x=-2;
    y=-2;
  }
  
   
  if(selected1[0]==x && selected1[1]==y){
    selected1[0]=-1;
    selected1[1]=-1;
  }
  
  if(selected2[0]==x && selected2[1]==y){
    selected2[0]=-1;
    selected2[1]=-1;
  }
    
 
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
    fill(255);
    rect(1000,150,90,75);
    fill(0);
    text(scores.getMoves() + "", 1025,200);
    text("Current Score: ", 925, 400);
    fill(255);
    rect(980,450,110,75);
    fill(0);
    text(scores.getScore() + "", 1025,500);
    text("Goal Score: ", 950, 700);
    fill(255);
    rect(985,750,115,75);
    fill(0);
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
