
  
  
  
  void addButtons(){
  //PImage b = loadImage("/Users/yulia/Downloads/Дизайн без назви.png");
  //ImageButton (b, 100,500, 50, 50);
  
if (!showMenu){
 clock = Toggle(clock, 270, 485);
 if (darkTheme){
   
 if (clock){
    PImage  b = loadImage("Rd.png");
  noStroke();
  //Button (20,500, 70, 50);
  //ImageButton (b, 20,500, 70, 50);
  if ( ImageButton (b, 20,515, 70, 50))
    applyMove('r');
  
   b = loadImage("Ld.png");
   noStroke();
  if (ImageButton (b, 110,515, 70, 50))
    applyMove('l');
  
  b = loadImage("Fd.png");
 if ( ImageButton (b, 210,515, 70, 50))
    applyMove('f');
  
   b = loadImage("Bd.png");
  if (ImageButton (b, 300,515, 70, 50))
    applyMove('b');
  
  
  b = loadImage("Ud.png");
 if ( ImageButton (b, 400,515, 70, 50))
    applyMove('u');
  
   b = loadImage("Dd.png");
 if ( ImageButton (b, 500,515, 70, 50))
    applyMove('d');
 }else{
    PImage  b = loadImage("Rnd.png");
   noStroke();
  //Button (20,500, 70, 50);
  //ImageButton (b, 20,500, 70, 50);
  if ( ImageButton (b, 20,515, 70, 50))
    applyMove('R');
  
   b = loadImage("Lnd.png");
   noStroke();
  if (ImageButton (b, 110,515, 70, 50))
    applyMove('L');
  
  b = loadImage("Fnd.png");
 if ( ImageButton (b, 210,515, 70, 50))
    applyMove('F');
  
   b = loadImage("Bnd.png");
  if (ImageButton (b, 300,515, 70, 50))
    applyMove('B');
  
  
  b = loadImage("Und.png");
 if ( ImageButton (b, 400,515, 70, 50))
    applyMove('U');
  
   b = loadImage("Dnd.png");
 if ( ImageButton (b, 500,515, 70, 50))
    applyMove('D');
   
 }
 
 PImage b = loadImage("arrowd.png");
 if ( ImageButton (b, 30,30, 30, 30))
    applyMove(' ');
 
 b = loadImage("smiled.png");
 if ( ImageButton (b, 70,30, 30, 30)){
       myMovesBack();
   oneMove = true;
 
}

 b = loadImage("reputationd.png");
 if ( ImageButton (b, 110,30, 30, 30)){
     myMovesBack();
    change = true;
    solve = true;
  
}

  b = loadImage("book-2d.png");
 if ( ImageButton (b, 150,30, 30, 30)){
  showInstructions = true;
   showMenu = true;
 }

   b = loadImage("infod.png");
 if ( ImageButton (b, 550,30, 30, 30)){
  showMenu = true;
 }
 
 
 b = loadImage("rollerd.png");
 if ( ImageButton (b, 510,30, 30, 30)){
   darkTheme=false;
 }
 }else{
   
   
 if (clock){
    PImage  b = loadImage("R.png");
  noStroke();
  //Button (20,500, 70, 50);
  //ImageButton (b, 20,500, 70, 50);
  if ( ImageButton (b, 20,515, 70, 50))
    applyMove('r');
  
   b = loadImage("L.png");
   noStroke();
  if (ImageButton (b, 110,515, 70, 50))
    applyMove('l');
  
  b = loadImage("F.png");
 if ( ImageButton (b, 210,515, 70, 50))
    applyMove('f');
  
   b = loadImage("B.png");
  if (ImageButton (b, 300,515, 70, 50))
    applyMove('b');
  
  
  b = loadImage("U.png");
 if ( ImageButton (b, 400,515, 70, 50))
    applyMove('u');
  
   b = loadImage("D.png");
 if ( ImageButton (b, 500,515, 70, 50))
    applyMove('d');
 }else{
    PImage  b = loadImage("Rn.png");
   noStroke();
  //Button (20,500, 70, 50);
  //ImageButton (b, 20,500, 70, 50);
  if ( ImageButton (b, 20,515, 70, 50))
    applyMove('R');
  
   b = loadImage("Ln.png");
   noStroke();
  if (ImageButton (b, 110,515, 70, 50))
    applyMove('L');
  
  b = loadImage("Fn.png");
 if ( ImageButton (b, 210,515, 70, 50))
    applyMove('F');
  
   b = loadImage("Bn.png");
  if (ImageButton (b, 300,515, 70, 50))
    applyMove('B');
  
  
  b = loadImage("Un.png");
 if ( ImageButton (b, 400,515, 70, 50))
    applyMove('U');
  
   b = loadImage("Dn.png");
 if ( ImageButton (b, 500,515, 70, 50))
    applyMove('D');
   
 }
 
 PImage b = loadImage("arrow.png");
 if ( ImageButton (b, 30,30, 30, 30))
    applyMove(' ');
 
 b = loadImage("smile.png");
 if ( ImageButton (b, 70,30, 30, 30)){
       myMovesBack();
   oneMove = true;
 
}

 b = loadImage("reputation.png");
 if ( ImageButton (b, 110,30, 30, 30)){
     myMovesBack();
    change = true;
    solve = true;
  
}
  b = loadImage("book-2.png");
 if ( ImageButton (b, 150,30, 30, 30)){
  showInstructions = true;
   showMenu = true;
 }

 
 b = loadImage("roller.png");
 if ( ImageButton (b, 510,30, 30, 30)){ 
   darkTheme=true;
 }
 
    b = loadImage("info.png");
 if ( ImageButton (b, 550,30, 30, 30)){
  showMenu = true;
 }
 
 }
       }else {
       noStroke();
       PImage b = loadImage("close.png");
       if ( ImageButton (b, 550,30, 20, 20)){
        showMenu = false;
        showInstructions = false;
        //setup();
       }
       
       }

  }
  
  
