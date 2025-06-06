CandyBoard game;
Tracker scores;
int[] selected1 = {-1, -1};
int[] selected2 = {-1,-1};

void draw(){
    
   for(int i = 0; i < 9; i++){
      for(int j = 0; j < 9; j++){
        Candy temp = game.getBoard()[j][i];
        if(temp != null){
          temp.display(i,j);
        }
      }
    }
    
    
    
    drawScores();
    mousePressed();
    
      keyPressed();

    if (scores.win() || scores.gameOver()) {
      display();
    }
}

void mouseClicked(){
  if (scores.win() || scores.gameOver()) {
    return;
  }
  
  int x = min(8,mouseX/100);
  int y = min(8, mouseY/100);
  
  if(selected1[0]!=-1 && (selected1[0] !=x || selected1[1] !=y) &&selected2[0]==-1){
      selected2[0]=x;
      selected2[1]=y;
      x=-2;
      y=-2;
      stroke(255);
      line(selected2[0]*100, selected2[1] * 100, (selected2[0]+1) *100, selected2[1]*100);
      line(selected2[0]*100, selected2[1] * 100, selected2[0] *100, (selected2[1]+1)*100);
      line((selected2[0]+1)*100, selected2[1] * 100, (selected2[0]+1) *100, (selected2[1]+1)*100);
      line(selected2[0]*100, (selected2[1]+1) * 100, (selected2[0]+1) *100, (selected2[1]+1)*100);
      stroke(0);
    }
  
  
  if(selected1[0] == -1){
    selected1[0]=x;
    selected1[1]=y;
    x=-2;
    y=-2;
    stroke(255);
    line(selected1[0]*100, selected1[1] * 100, (selected1[0]+1) *100, selected1[1]*100);
    line(selected1[0]*100, selected1[1] * 100, selected1[0] *100, (selected1[1]+1)*100);
    line((selected1[0]+1)*100, selected1[1] * 100, (selected1[0]+1) *100, (selected1[1]+1)*100);
    line(selected1[0]*100, (selected1[1]+1) * 100, (selected1[0]+1) *100, (selected1[1]+1)*100);
    stroke(0);
  }
  
   
  if(selected1[0]==x && selected1[1]==y){
    selected1[0]=-1;
    selected1[1]=-1;
    stroke(0);
    line(x*100, y * 100, (x+1) *100, y*100);
    line(x*100, y * 100, x *100, (y+1)*100);
    line((x+1)*100, y * 100, (x+1) *100, (y+1)*100);
    line(x*100, (y+1) * 100, (x+1) *100, (y+1)*100);
  }
  
  if(selected2[0]==x && selected2[1]==y){
    selected2[0]=-1;
    selected2[1]=-1;
    stroke(0);
    line(x*100, y * 100, (x+1) *100, y*100);
    line(x*100, y * 100, x *100, (y+1)*100);
    line((x+1)*100, y * 100, (x+1) *100, (y+1)*100);
    line(x*100, (y+1) * 100, (x+1) *100, (y+1)*100);
  }
    
 
}

void keyPressed(){
  if(key == ' ' && selected1[0] != -1 && selected1[1] !=-1 && selected2[0] != -1 && selected2[1]!=-1){
    //Candy temp = game.getBoard()[selected1[1]][selected1[0]];
    //Candy temp2 = game.getBoard()[selected2[1]][selected2[0]];
    //temp.display(selected2[0],selected2[1]);
    //temp2.display(selected1[0],selected1[1]);
    delay(1000);
    int spaces = game.swap(selected1[0],selected1[1],selected2[0],selected2[1]);
    int prev = scores.getScore();
    scores.increaseScore(spaces);
    scores.progressGoal(spaces);
    if(scores.getScore()>prev){
      scores.decreaseMoves();
    }
    fill(150);
    rect(0,0,900,900);
    stroke(0);
    for(int i= 0; i <=900;i+=100){
      line(0,i,900,i);
      line(i,0,i,900);
    }
    //line(selected1[0]*100, selected1[1] * 100, (selected1[0]+1) *100, selected1[1]*100);
    //line(selected1[0]*100, selected1[1] * 100, selected1[0] *100, (selected1[1]+1)*100);
    //line((selected1[0]+1)*100, selected1[1] * 100, (selected1[0]+1) *100, (selected1[1]+1)*100);
    //line(selected1[0]*100, (selected1[1]+1) * 100, (selected1[0]+1) *100, (selected1[1]+1)*100);
    //line(selected2[0]*100, selected2[1] * 100, (selected2[0]+1) *100, selected2[1]*100);
    //line(selected2[0]*100, selected2[1] * 100, selected2[0] *100, (selected2[1]+1)*100);
    //line((selected2[0]+1)*100, selected2[1] * 100, (selected2[0]+1) *100, (selected2[1]+1)*100);
    //line(selected2[0]*100, (selected2[1]+1) * 100, (selected2[0]+1) *100, (selected2[1]+1)*100);

    selected1[0] = -1;
    selected1[1] = -1;
    selected2[0] = -1;
    selected2[1] = -1;

  }

}


 void setup() {
   size(1200, 900);
   fill(150);
   rect(0,0,900,900);
    
    game = new CandyBoard();
    for(int i = 0; i < 9; i++){
      for(int j = 0; j < 9; j++){
        Candy temp = game.getBoard()[j][i];
        if(temp != null){
          temp.display(i,j);
        }
      }
    }
    for(int i= 0; i <=900;i+=100){
      line(0,i,900,i);
      line(i,0,i,900);
    }
    scores = new Tracker(30,3000);

 }
 
 
 void drawScores() {
   textSize(40);
    fill(0);
    text("Moves Left: ", 950, 50);
    fill(255);
    rect(1000,80,90,75);
    fill(0);
    text(scores.getMoves() + "", 1025,130);
    text("Current Score: ", 925, 270);
    fill(255);
    rect(985,300,115,75);
    fill(0);
    text(scores.getScore() + "", 1000,350);
    text("Goal Score: ", 950, 500);
    fill(255);
    rect(985,530,115,75);
    fill(0);
    text(scores.getGoal() + "", 1000,580);
    
    textSize(20);
    fill(0);
    text("Key:", 930, 670);
    fill(255);
    rect(910, 680, 280, 200);
    
    textSize(15);
    fill(0);
    text("Black Outline = Up-Down Striped Candy", 930, (690 + 20));
    text("White Outline = Left-Right Striped Candy", 930, (720 + 20));
    text("Lighter Shade of Color Outline", 930, (750 + 20));
    text("= WRAPPED Candy", 930, (770 + 20));
    text("Darker Shade of Color Outline", 930, (800 + 20));
    text("= BOMB Candy", 930, (820 + 20));
    text("No Outline = REGULAR Candy", 930, (850 + 20));
    
    text("-", 920, 710);
    text("-", 920, 740);
    text("-", 920, 770);
    text("-", 920, 820);
    text("-", 920, 870);
    
  // 2 is striped (across)   white
  // 3 is wrapped    lighter shade of the color
  // 4 is bomb   color but a darker shade 
    
 }
 
 
 
 void display() {
   //code for when the game ends
   if (scores.win() || scores.gameOver()) {
     
     if (scores.win()) {
       fill(0,255,0);
       rect(0, 0, 1200, 900);
       textSize(200);
       fill(0);
       text("You Win!", 200, 450);
     } else {
       fill(255,0,0);
       rect(0, 0, 1200, 900);
       textSize(200);
       fill(0);
       text("Game Over!", 120, 450);
     }
   }  
 }
