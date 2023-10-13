 int nCount;
 Die mix;
  void setup()
  {
      noLoop();
      size(400, 420);
    }
  void draw(){
    background((int)(Math.random()*200), (int)(Math.random()*100), (int)(Math.random()*120));
      for(int j = 29; j <= 365; j+=60) {
       for(int m = 29; m <= 360; m += 60) {
         mix = new Die(m, j);
         mix.show();
         mix.roll();
     //    nCount = nCount + mix.numDots;

    
  }
     }
fill(50);
textSize(15);
fill(255);
textAlign(CENTER);
        text("Total = " + nCount, width/2, 400);
      
  }
  void mousePressed()
  {
      redraw();
      nCount = 0;
  }
  class Die //models one single dice cube
  {
int dice, diceX, diceY, numDots, diceTop, diceSide;      
      Die(int x, int y) //constructor
      {
         diceX = x;
        diceY = y;
        diceSide = 40;
        roll();
      }
      void roll()
      {
         numDots = (int)(Math.random()*6)+1;
      }
      void show()
      {
        //stroke(1);
        noStroke();
        fill((int)(Math.random()*200), (int)(Math.random()*100), (int)(Math.random()*120));
        rect(diceX, diceY, diceSide, diceSide, 5);
        fill(((int)(Math.random()*255)), (int)(Math.random()*255), (int)(Math.random()*255));
        if(numDots == 1){
       ellipse(diceX + diceSide/2, diceY + diceSide/2, 5, 5); 
       nCount = nCount + 1;
        }
        else if(numDots == 2) {
          ellipse(diceX + 3*diceSide/4, diceY + diceSide/4, 5, 5);
          ellipse(diceX + diceSide/4, diceY + 3*diceSide/4, 5, 5);
          nCount = nCount + 2;
        }
          
          else if(numDots == 3) {
      ellipse(diceX + diceSide/4, diceY + diceSide/4, 5, 5); 
      ellipse(diceX + 3*diceSide/4, diceY + 3*diceSide/4, 5, 5); 
      ellipse(diceX + diceSide/2, diceY + diceSide/2, 5, 5); 
      nCount = nCount + 3;
        } 
        else if(numDots == 4) {
         ellipse(diceX + diceSide/4, diceY + diceSide/4, 5, 5); 
      ellipse(diceX + 3*diceSide/4, diceY + 3*diceSide/4, 5, 5); 
      ellipse(diceX + 3*diceSide/4, diceY + diceSide/4, 5, 5);
          ellipse(diceX + diceSide/4, diceY + 3*diceSide/4, 5, 5);
          nCount = nCount + 4;
        } 
        else if(numDots == 5) {
         ellipse(diceX + diceSide/4, diceY + diceSide/4, 5, 5); 
      ellipse(diceX + 3*diceSide/4, diceY + 3*diceSide/4, 5, 5); 
      ellipse(diceX + 3*diceSide/4, diceY + diceSide/4, 5, 5);
          ellipse(diceX + diceSide/4, diceY + 3*diceSide/4, 5, 5);
                 ellipse(diceX + diceSide/2, diceY + diceSide/2, 5, 5); 
                 nCount = nCount + 5;
      } 
      else if(numDots == 6) {
         ellipse(diceX + diceSide/4, diceY + diceSide/4, 5, 5); 
      ellipse(diceX + 3*diceSide/4, diceY + 3*diceSide/4, 5, 5); 
      ellipse(diceX + 3*diceSide/4, diceY + diceSide/4, 5, 5);
          ellipse(diceX + diceSide/4, diceY + 3*diceSide/4, 5, 5);
        ellipse(diceX + 3*diceSide/4, diceY + diceSide/2, 5, 5); 
      ellipse(diceX + diceSide/4, diceY + diceSide/2, 5, 5); 
      nCount = nCount + 6;
      }


  }


  }







