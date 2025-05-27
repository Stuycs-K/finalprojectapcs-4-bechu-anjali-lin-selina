class Board{
  private Candy[][] board;
  
  Board(){
    board = new Candy[9][9];
    String[] colors = {"red", "orange", "yellow", "green", "blue", "purple"};
    for(int i = 0; i < 9; i++){
      for(int j = 0; j < 9; j++){
        int colr = (int)(Math.random() * 6);
        board[i][j]= new Candy(colors[colr], 0, 10);
      }
    }
  }
  
  
  boolean swap(int x1, int y1, int x2, int y2){

    Candy temp = board[y1][x1];
    board[y1][x1]=board[y2][x2];
    board[y2][x2]=temp;
    return true;
  }
  
  boolean remove(int x, int y){
    board[y][x] = null;
  }
  
  void replace(){
    
  }

  boolean swappable(int x, int y){
    Candy select = board[y][x];
    String thisColor = select.getColor();
    
    boolean swappable1 = false;
    
    if(x-1>=0){
      if(board[y][x-1].getColor().equals(thisColor)){
        swappable1 = true;
      }
    }
    
    if(x+1<board[0].length){
      if(board[y][x+1].getColor().equals(thisColor)){
        swappable1 = true;
      }
    }
    
    if(y-1>=0){
      if(board[y-1][x].getColor().equals(thisColor)){
        swappable1 = true;
      }
    }
    
    if(y+1<board.length){
      if(board[y+1][x].getColor().equals(thisColor)){
        swappable1 = true;
      }
    }
    
    if(!swappable1){
      return false;
    }
    
    boolean swappable2 = false;
    
    if(x-2>=0){  
    swappable2 = true;
    } 
    
    if(x+2<board[0].length){
      swappable2 = true;
    }
    
    if(y-2>=0){
      swappable2 = true;
    } 
    
    if(y+2<board.length){
      swappable2 = true;
    }
    return swappable2;
  }

}
