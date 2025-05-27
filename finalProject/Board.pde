class Board{
  private Candy[][] board;
  
  Board(){
    board = new Candy[9][9];
    String[] colors = {"red", "orange", "yellow", "green", "blue", "purple"};
    for(int i = 0; i < 9; i++){
      for(int j = 0; j < 9; j++){
        int colr = (int)(Math.random() * 6);
        board[i][j]= new Candy(colors[colr], -1, 5);
      }
    }
  }
  
  
  boolean swap(int x1, int y1, int x2, int y2){
    if(swappable(x1,y1,x2.y2) || swappable(x2,y2,x1,y1)){
      Candy temp = board[y1][x1];
      board[y1][x1]=board[y2][x2];
      board[y2][x2]=temp;
      return true;
    }
    return false;
  }
  
  boolean remove(int x, int y){
    int spec = board[y][x].getSpecial();
    String colr = board[y][x].getColor();
    if(spec<4 && swappable(x,y,x,y)){
      int total = 0;
      int left = -1;
      int up = -1;
      while(left+x > -1 && board[y][x+left].getColor().equals(colr)){
        board[y][x+left]=null;
        left--;
        total++;
      }
      int right = 1;
      while(right+x<board[0].length && board[y][x+right].getColor().equals(colr)){
        board[y][x+right]=null;
        right++;
        total++;
      }
      while(up+y > -1 && board[y+up][x].getColor().equals(colr)){
        board[y+up][x]=null;
        up--;
        total++;
      }
      int down = 1;
      while(down+x<board.length && board[y+down][x].getColor().equals(colr)){
        board[y+down][x]=null;
        down++;
        total++;
      }
      if(spec==-1){
        if(total == 2){
          board[y][x] = null;
        }
        if(total == 3){
          board[y][x].setSpecial((int)(Math.random() * 2 + 1));
        }
        if(total == 4){
          board[y][x].setSpecial(4);
        }
        if(total == 5){
          board[y][x].setSpecial(3);
        }
      }
      if(spec ==1){
        for(int i = 0; i < board.length; i++){
          board[i][x]=null;
        }
      }
      if(spec == 2){
      for(int i = 0; i < board.length; i++){
          board[y][i]=null;
        }
      }
      if(spec == 3){
        if(left==-1){
          left=0;
        }
        if(right == board.length){
          right = 8;
        }
        if(up ==-1){
          up = 0;
        }
        if(down == board.length){
          down = 8;
        }
        for(int i = left; i < right; i++){
          for(int j = up; j < down; j++){
            board[j][i] = null;
          }
        }
      }
      return true;
    }
    
    return false;
  }
  
  void replace(){
    
  }

  boolean swappable(int x1, int y1, int x, int y){
    Candy select = board[y1][x1];
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
    
    if(x-2>=0 && board[y][x-1].getColor().equals(thisColor)){  
      if(board[y][x-2].getColor().equals(thisColor)){
        swappable2 = true;
      }
    } 
    
    if(x+2<board[0].length && board[y][x+1].getColor().equals(thisColor)){
      if(board[y][x+2].getColor().equals(thisColor)){
        swappable2 = true;
      }
    }
    
    if(y-2>=0 && board[y-1][x].getColor().equals(thisColor)){
      if(board[y-2][x].getColor().equals(thisColor)){
        swappable2 = true;
      }
    } 
    
    if(y+2<board.length && board[y+2][x].getColor().equals(thisColor)){
      if(board[y+2][x].getColor().equals(thisColor)){
        swappable2 = true;
      }
    }
    return swappable2;
  }

}
