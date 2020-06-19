
import peasy.*;

PeasyCam cam;
float speed = 0.5;
int dim = 3;
Cubie[] cube = new Cubie[dim*dim*dim];

ArrayList<Move> sequence ;
ArrayList<Move> myMoves ;
ArrayList<Move> myNewMoves ;

boolean started = false;
boolean change = false;
boolean showMenu = false;
boolean showInstructions = false;


boolean clock = true;
boolean solve = false;
boolean oneMove = false;
boolean handMove = false;
boolean darkTheme = false;


int randomMovesCounter;

Move currentMove;

//up, down, right, left, front, back
Move[] allMoves = new Move[] {
  //UP
  new Move(0, 1, 0, 1), 
  new Move(0, 1, 0, -1), 
  //down
  new Move(0, -1, 0, 1), 
  new Move(0, -1, 0, -1), 
  //right
  new Move(1, 0, 0, 1), 
  new Move(1, 0, 0, -1), 
  //left
  new Move(-1, 0, 0, 1), 
  new Move(-1, 0, 0, -1), 
  //front
  new Move(0, 0, 1, 1), 
  new Move(0, 0, 1, -1), 
  //back
  new Move(0, 0, -1, 1), 
  new Move(0, 0, -1, -1),
};





void createCube(){
  
  sequence = new ArrayList<Move>();
  myMoves = new ArrayList<Move>();
 
  randomMovesCounter = 0;
  int index = 0;
  solve = false;
  
  
  
  for (int x = -1; x <= 1; x++) {
    for (int y = -1; y <= 1; y++) {
      for (int z = -1; z <= 1; z++) {
        PMatrix3D matrix = new PMatrix3D();
        matrix.translate(x, y, z);
        cube[index] = new Cubie(matrix, x, y, z);
        index++;
      }
    }
  }

int a = (int)random (40) +10;
  for (int i = 0; i < 4; i++) {
    int r = int(random(allMoves.length));
    Move m = allMoves[r];
    sequence.add(m);
  }

  currentMove = sequence.get(randomMovesCounter);

  for (int i = sequence.size()-1; i >= 0; i--) {
    Move nextMove = sequence.get(i).copy();
    nextMove.reverse();
    sequence.add(nextMove);
  }

  currentMove.start();

}
 
 void myMovesBack(){
     myNewMoves= new ArrayList<Move>();
  for (int i = myMoves.size()-1; i >= 0; i--) {
    Move nextMove = myMoves.get(i).copy();
    nextMove.reverse();
    myNewMoves.add(nextMove);
  }
}

void undoOneMyMove(){
   if ( myNewMoves.size()>0){
                    currentMove = myNewMoves.get(0);
                    currentMove.start();
                   myNewMoves.remove(0);
                   myMoves.remove(myMoves.size()-1);
                  } else {
                    handMove = false;
                  }
                   oneMove=false;
}

void drawInfo(){
 //textSize(32);
 //fill(0);
 // text("Created by", 100, 100);
   PImage b= loadImage("About.jpg");
    image(b, 0, 0);
}


void drawInstructions(){
   PImage b= loadImage("instr.png");
    image(b, 0, 0);
}

void setup() {
  size(600, 600, P3D);
  //fullScreen(P3D);
  cam = new PeasyCam(this, 400);
  createCube();
   cam.setMinimumDistance(500);
  cam.setMaximumDistance(500);
}


void draw() {
  
 if (darkTheme){ background(0); }else
  background(#ffffff); 
  cam.beginHUD();
  fill(#2F4858);
  if (showInstructions){
     drawInstructions();
  }
  else if (showMenu)
    drawInfo();

  addButtons();
  stroke(#FFEEEE);
  cam.endHUD();
if (!showMenu){
  
  rotateX(-0.5);
  rotateY(0.4);
  rotateZ(0.1);



  currentMove.update();
  if (currentMove.finished()) {
    if (randomMovesCounter < (sequence.size()-1)/2 ){
      randomMovesCounter++;
      currentMove = sequence.get(randomMovesCounter);
      currentMove.start();
    } else if (change){
      if ( 0 < myNewMoves.size()){ 
      currentMove = myNewMoves.get(0);
      myMoves.remove(myMoves.size()-1);
       myNewMoves.remove(0);
       currentMove.start();
      } else { //<>//
        change = false;
      }
    } else if ((solve && randomMovesCounter < sequence.size()-1) || (oneMove  && randomMovesCounter < sequence.size()-1)){

           if (oneMove&&handMove){
                undoOneMyMove();
           } else {
              randomMovesCounter++;
              currentMove = sequence.get(randomMovesCounter);
              currentMove.start();
               oneMove=false;
           }
               println("sequence.size()-1" + (sequence.size()-1));
           
    }else if (oneMove&&handMove){
    undoOneMyMove();
    
    }else if (randomMovesCounter == sequence.size()-1 ){
       solve = false;}
  }



  scale(50);
  for (int i = 0; i < cube.length; i++) {
    push();
    if (abs(cube[i].z) > 0 && cube[i].z == currentMove.z) {
      rotateZ(currentMove.angle);
    } else if (abs(cube[i].x) > 0 && cube[i].x == currentMove.x) {
      rotateX(currentMove.angle);
    } else if (abs(cube[i].y) > 0 && cube[i].y ==currentMove.y) {
      rotateY(-currentMove.angle);
    }   
    cube[i].show();
    pop();
  }


} //<>// //<>// //<>// //<>//
}
