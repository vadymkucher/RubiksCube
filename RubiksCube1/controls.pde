

void keyPressed() {
  if(currentMove.finished())
   applyMove(key);
 
}

void applyMove(char move) {
  handMove = true;
  switch (move) {
  case SHIFT:    
    break;
   case 'f': 
    currentMove = allMoves[8]; //thats right
    myMoves.add(currentMove);
        currentMove.start();
    break;
  case 'F': 
    currentMove = allMoves[9];
      myMoves.add(currentMove);
        currentMove.start();
    break;  
  case 'b': 
 currentMove = allMoves[10];
     myMoves.add(currentMove);
        currentMove.start();
    break;
  case 'B': 
  currentMove = allMoves[11];
   myMoves.add(currentMove);
      currentMove.start();
    break;
  case 'u': 
   
    currentMove = allMoves[3];
     myMoves.add(currentMove);
     currentMove.start();
     
    break;
  case 'U': 
     currentMove = allMoves[2];//thats right
      myMoves.add(currentMove);
      currentMove.start();
    break;
  case 'd': 
 
      currentMove = allMoves[1];//thats right
       myMoves.add(currentMove);
       currentMove.start();
    break;
  case 'D': 
     currentMove = allMoves[0]; //THAT RIGHT
      myMoves.add(currentMove);
      currentMove.start();
    break;
  case 'l': 
    currentMove = allMoves[6];//thats right
     myMoves.add(currentMove);
     currentMove.start();
    break;
  case 'L': 
     currentMove = allMoves[7];//thats right
      myMoves.add(currentMove);
      currentMove.start();
    break;
  case 'r': 
     currentMove = allMoves[4];
      myMoves.add(currentMove);
      currentMove.start();
    break;
  case 'R': 
      currentMove = allMoves[5];
       myMoves.add(currentMove);
       currentMove.start();
    break;
  case ' ': 
    setup();
    break;
  }
}
