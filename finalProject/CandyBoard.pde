class CandyBoard{
  private Candy[][] board;
  
  CandyBoard(){
    board = new Candy[9][9];
    String[] colors = {"red", "orange", "yellow", "green", "blue", "purple"};
    for(int i = 0; i < 9; i++){
      for(int j = 0; j < 9; j++){
        int colr = (int)(Math.random() * 6);
        board[i][j]= new Candy(colors[colr], -1, 5);
      }
    }
    replace();
  }
  
  Candy[][] getBoard(){
    return board;
  }
  
  
  int swap(int x1, int y1, int x2, int y2){
    if(swappable(x1,y1,x2,y2) || swappable(x2,y2,x1,y1)){
      Candy temp = board[y1][x1];
      board[y1][x1]=board[y2][x2];
      board[y2][x2]=temp;
      
      //int candyX1 = (x2 - x1) * 100; 
      //int candyY1 = (y2 - y1) * 100;
      //int candyX2 = (x1 - x2) * 100;
      //int candyY2 = (y1 - y2) * 100;
      
      //int speed = 10;
      
      //while (abs(candyX1 - (x2 * 100)) > 1 || abs(candyY1 - (y2 * 100)) > 1 || abs(candyX2 - (x1 * 100)) > 1 || abs(candyY2 - (y1 * 100)) > 1) {
      //  candyX1 += candyX1 / speed;
      //  candyY1 += candyY1 / speed;
      //  candyX2 += candyX2 / speed;
      //  candyY2 += candyY2 / speed;
        
      //  delay(15);
      //}
      return remove(x1,y1) + remove(x2,y2) + replace();
    }
    return 0;
  }
  
  int remove(int x, int y){
    int spec = board[y][x].getSpecial();
    String colr = board[y][x].getColor();
    int total = 0;
    if(spec<4 && swappable(x,y,x,y)){
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
      while(down+y<board.length && board[y+down][x].getColor().equals(colr)){
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
          total++;
        }
      }
      if(spec == 2){
      for(int i = 0; i < board.length; i++){
          board[y][i]=null;
          total++;
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
            total++;
          }
        }
      }
      
      return total +replace();
    }
    if(spec == 4){
      for(int i = 0; i < board.length; i++){
        for(int j = 0; j < board.length; j++){
          if(board[i][j].getColor().equals(colr)){
            board[i][j]=null;
            total++;
          }
        }
      }
      
      return total + replace();
    }
    return total + replace();
  }
  
  int replace(){
    int total = 0;
    /*for(int i = 0; i < board.length; i++){
      for(int j = board.length - 1; j >-1; j--){
        int up = 0;
        if(board[j][i]==null){
         while(j-up > -1 && board[j-up][i] == null){
           up++;
         }
       } 
       if(j-up>-1){
         board[j][i]= board[j-up][i];
         board[j-up][i]=null;
       }
      }
    } */
    for(int i = 0; i < board.length; i++){
      for(int j = 0; j < board.length; j++){
        if(board[i][j]==null){
          String[] colors = {"red", "orange", "yellow", "green", "blue", "purple"};
          int colr = (int)(Math.random() * 6);
          board[i][j]= new Candy(colors[colr], -1, 5);
          total++;
        }
      }
    }
    for(int i = 0; i < board.length; i++){
      for(int j = 0; j < board.length; j++){
       if(swappable(i,j,i,j)){
         total+=remove(i,j);
       } 
      }
    }
    return total;
  }

  boolean swappable(int x1, int y1, int x, int y){
    Candy select = board[y1][x1];
    if(select == null){
      return false;
    }
    String thisColor = select.getColor();
    
    boolean swappable1 = false;
    
    if(x-1>-1 && board[y][x-1] !=null){
      if(board[y][x-1].getColor().equals(thisColor)){
        swappable1 = true;
      }
    }
    
    if(x+1<board[0].length && board[y][x+1] != null){
      if(board[y][x+1].getColor().equals(thisColor)){
        swappable1 = true;
      }
    }
    
    if(y-1>-1 && board[y-1][x] != null){
      if(board[y-1][x].getColor().equals(thisColor)){
        swappable1 = true;
      }
    }
    
    if(y+1<board.length && board[y+1][x] != null){
      if(board[y+1][x].getColor().equals(thisColor)){
        swappable1 = true;
      }
    }
    
    if(!swappable1){
      return false;
    }
    
    boolean swappable2 = false;
    if(x-1>-1 && x+1<board.length  && board[y][x-1].getColor().equals(thisColor) && board[y][x+1].getColor().equals(thisColor)){
      swappable2 = true;
    }
    if(y-1>-1 && y+1<board.length  && board[y-1][x].getColor().equals(thisColor) && board[y+1][x].getColor().equals(thisColor)){
      swappable2 = true;
    }
    
    if(x-2>-1 && board[y][x-2] != null && board[y][x-1] != null && board[y][x-1].getColor().equals(thisColor)){  
      if(board[y][x-2].getColor().equals(thisColor)){
        swappable2 = true;
      }
    } 
    
    if(x+2<board[0].length && board[y][x+2] != null && board[y][x+1] != null && board[y][x+1].getColor().equals(thisColor)){
      if(board[y][x+2].getColor().equals(thisColor)){
        swappable2 = true;
      }
    }
    
    if(y-2>-1 && board[y-2][x] != null && board[y-1][x] != null && board[y-1][x].getColor().equals(thisColor)){
      if(board[y-2][x].getColor().equals(thisColor)){
        swappable2 = true;
      }
    } 
    
    if(y+2<board.length && board[y+2][x] != null && board[y+1][x] != null && board[y+1][x].getColor().equals(thisColor)){
      if(board[y+2][x].getColor().equals(thisColor)){
        swappable2 = true;
      }
    }
    return swappable2;
  }

}
