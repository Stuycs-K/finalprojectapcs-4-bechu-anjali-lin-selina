class Board{
  Candy[][] board;
  
  boolean swap(int x1, int y1, int x2, int y2){

    Candy temp = board[y1][x1];
    board[y1][x1]=board[y2][x2];
    board[y2][x2]=temp;
    return true;
  }
  
  boolean remove(int x, int y){
  
  }
  
  void replace(){
  
  }

  boolean swappable(int x, int y){
    Candy select = board[y][x];
    
    boolean swappable1 = false;
    
    if(x-1>=0 && x+1<board[0].length){
      swappable1 = true;
    }
    
    if(y-1>=0 && y+1<board.length){
      swappable1 = true;
    }
    
    if(x-2>=0){  
    swappable1 = true;
    } 
    
    if(x+2<board[0].length){
      swappable1 = true;
    }
    
    if(y-2>=0){
    
    } 
    
    if(y+2<board.length){
      swappable1 = true;
    }
    
  }

}
