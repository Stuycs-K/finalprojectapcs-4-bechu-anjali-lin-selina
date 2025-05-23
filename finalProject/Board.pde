class Board{
  Candy[][] board;
  
  boolean swap(int x1, int y1, int x2, int y2){
   boolean swappable1 = false;
   
   Candy one = board[y1][x1];
   Candy two = board[y2][x2];
   
   if(one.getColor().equals(board[y1][y2])){swappable1=true;}
   
   
    
    
    Candy temp = board[y1][x1];
    board[y1][x1]=board[y2][x2];
    board[y2][x2]=temp;
    return true;
  }
  boolean remove(int x, int y){}
  void replace(){}



}
