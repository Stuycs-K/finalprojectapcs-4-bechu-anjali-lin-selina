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

  CandyBoard(int i){

    Candy[] zero = {new Candy("red", -1, 5), new Candy("red", -1, 5),new Candy("green", -1, 5),new Candy("green", -1, 5),new Candy("purple", -1, 5),new Candy("red", -1, 5),new Candy("orange", -1, 5),new Candy("green", -1, 5),new Candy("orange", -1, 5)};
    Candy[] one = {new Candy("green", -1, 5), new Candy("green", -1, 5),new Candy("purple", -1, 5),new Candy("blue", -1, 5),new Candy("blue", -1, 5),new Candy("red", -1, 5),new Candy("green", -1, 5),new Candy("purple", -1, 5),new Candy("orange", -1, 5)};
    Candy[] two = {new Candy("red", -1, 5), new Candy("blue", -1, 5),new Candy("green", -1, 5),new Candy("green", -1, 5),new Candy("blue", -1, 5),new Candy("orange", -1, 5),new Candy("purple", -1, 5),new Candy("orange", -1, 5),new Candy("green", -1, 5)};
    Candy[] three = {new Candy("orange", -1, 5), new Candy("yellow", -1, 5),new Candy("blue", -1, 5),new Candy("yellow", -1, 5),new Candy("purple", -1, 5),new Candy("purple", -1, 5),new Candy("green", -1, 5),new Candy("red", -1, 5),new Candy("purple", -1, 5)};
    Candy[] four = {new Candy("purple", -1, 5), new Candy("yellow", -1, 5),new Candy("green", -1, 5),new Candy("purple", -1, 5),new Candy("green", -1, 5),new Candy("red", -1, 5),new Candy("red", -1, 5),new Candy("green", -1, 5),new Candy("red", -1, 5)};
    Candy[] five = {new Candy("blue", -1, 5), new Candy("red", -1, 5),new Candy("blue", -1, 5),new Candy("green", -1, 5),new Candy("yellow", -1, 5),new Candy("green", -1, 5),new Candy("yellow", -1, 5),new Candy("yellow", -1, 5),new Candy("purple", -1, 5)};
    Candy[] six = {new Candy("orange", -1, 5), new Candy("orange", -1, 5),new Candy("purple", -1, 5),new Candy("blue", -1, 5),new Candy("orange", -1, 5),new Candy("green", -1, 5),new Candy("green", -1, 5),new Candy("yellow", -1, 5),new Candy("blue", -1, 5)};
    Candy[] seven = {new Candy("orange", -1, 5), new Candy("blue", -1, 5),new Candy("yellow", -1, 5),new Candy("orange", -1, 5),new Candy("green", -1, 5),new Candy("orange", -1, 5),new Candy("red", -1, 5),new Candy("purple", -1, 5),new Candy("orange", -1, 5)};
    Candy[] eight = {new Candy("green", -1, 5), new Candy("purple", -1, 5),new Candy("green", -1, 5),new Candy("blue", -1, 5),new Candy("blue", -1, 5),new Candy("red", -1, 5),new Candy("yellow", -1, 5),new Candy("orange", -1, 5),new Candy("purple", -1, 5)};
     board = new Candy[9][9];
     board[0] = zero;
     board[1] = one;
     board[2]=two;
     board[3]=three;
     board[4]=four;
     board[5]=five;
     board[6]=six;
     board[7]=seven;
     board[8]=eight;
  }


  Candy[][] getBoard(){
    return board;
  }


   int swap(int x1, int y1, int x2, int y2) {

     Candy temp = board[y1][x1];
     board[y1][x1] = board[y2][x2];
     board[y2][x2] = temp;

     if (swappable(x1, y1, x1, y1) || swappable(x2, y2, x2, y2)) {
       return remove(x1, y1) + remove(x2, y2) + replace();
     }else{
       temp = board[y1][x1];
       board[y1][x1] = board[y2][x2];
       board[y2][x2] = temp;
       return 0;
  }
}


  int remove(int x, int y){
    if(board[y][x] == null){
    return 0;
    }
    int spec = board[y][x].getSpecial();
    String colr = board[y][x].getColor();
    int total = 0;
    if(spec<4 && swappable(x,y,x,y)){
      int left = 1;
      int up = 1;
      int right = 1;
      int down = 1;
      while(y-up > -1 && board[y-up][x] != null && board[y-up][x].getColor().equals(colr)){
        int spec1 = board[y-up][x].getSpecial();
        if(spec1==-1){
        board[y-up][x]=null;
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
        board[y-up][x]=null;
        up++;
        total++;
      }

      while(down+y<board.length && board[y+down][x] != null&& board[y+down][x].getColor().equals(colr)){
        int spec1 = board[y+down][x].getSpecial();
        board[y+down][x]=null;
        down++;
        total++;
      }
      while(x-left > -1 && board[y][x-left] != null && board[y][x-left].getColor().equals(colr)){
        int spec1 = board[y][x-left].getSpecial();
        board[y][x-left]=null;
        left++;
        total++;
      }

      while(right+x<board[0].length && board[y][x+right] != null && board[y][x+right].getColor().equals(colr)){
        int spec1 = board[y][x+right].getSpecial();
        board[y][x+right]=null;
        right++;
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

      return total+replace();
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

      return total+replace();
    }
    return total+replace();
  }

  int replace(){
    int total = 0;
    for(int i = 0; i < board.length; i++){
      for(int j = board.length - 1; j >-1; j--){
        int up = 0;
        if(board[j][i]==null){
         while(j-up > -1 && board[j-up][i] == null){
           up++;
         }
          if(j-up>-1){
           board[j][i]= board[j-up][i];
           board[j-up][i]=null;
         }
       }

      }
    }
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
    if(x-1>-1 && x+1<board.length && board[y][x-1] != null && board[y][x+1] != null  && board[y][x-1].getColor().equals(thisColor) && board[y][x+1].getColor().equals(thisColor)){
      swappable2 = true;
    }
    if(y-1>-1 && y+1<board.length && board[y-1][x] != null && board[y+1][x] != null    && board[y-1][x].getColor().equals(thisColor) && board[y+1][x].getColor().equals(thisColor)){
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



void redrawBoard() {
     for(int i = 0; i < 9; i++){
      for(int j = 0; j < 9; j++){
        Candy temp = game.getBoard()[j][i];
        if(temp != null){
          temp.display(i,j);
        }
      }
    }

}
}
