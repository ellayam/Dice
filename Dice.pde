void setup()
{
  size(300,300);
  noLoop();
  textAlign(CENTER);
}

Die beans;

void draw()
{
  int dieSum = 0;
  background((int)(Math.random()*100) + 150,(int)(Math.random()*100) + 150,(int)(Math.random()*100) + 150);
  int sum = 0;
  for(int y = 25; y < 205; y += 75) {
    for(int x = 10; x < 300; x += 75) {
      beans = new Die(x,y);
      beans.show();
      dieSum += diceNum;
    }
  }
  textSize(20);
  fill(0,0,0);
  text("Total number rolled: " + dieSum,150,270);
}

void mousePressed()
{
  redraw();
}

int diceNum;

class Die //models one single dice cube
{
  int numRolled;
  int diceX;
  int diceY;
 
  Die(int x, int y) //constructor
  {
    roll();
    diceX = x;
    diceY = y;
  }
  void roll()
  {
    numRolled = (int)(Math.random()*6) + 1;
  }
  void show()
  {
    noStroke();
    fill(255,255,255);
    rect(diceX,diceY,50,50);
    fill((int)(Math.random()*100) + 100,(int)(Math.random()*100) + 100,(int)(Math.random()*100) + 100);
    if(numRolled == 1) {
      ellipse(diceX+25,diceY+25,7,7);
      diceNum = 1;
    } else if(numRolled == 2) {
      ellipse(diceX+15,diceY+15,7,7);
      ellipse(diceX+35,diceY+35,7,7);
      diceNum = 2;
    } else if(numRolled == 3) {
      ellipse(diceX+15,diceY+15,7,7);
      ellipse(diceX+25,diceY+25,7,7);      
      ellipse(diceX+35,diceY+35,7,7);
      diceNum = 3;
    } else if(numRolled == 4) {
      ellipse(diceX+15,diceY+15,7,7);
      ellipse(diceX+35,diceY+15,7,7);
      ellipse(diceX+15,diceY+35,7,7);
      ellipse(diceX+35,diceY+35,7,7);
      diceNum = 4;
    } else if(numRolled == 5) {
      ellipse(diceX+15,diceY+15,7,7);
      ellipse(diceX+35,diceY+15,7,7);
      ellipse(diceX+25,diceY+25,7,7);            
      ellipse(diceX+15,diceY+35,7,7);
      ellipse(diceX+35,diceY+35,7,7);
      diceNum = 5;
    } else {
      ellipse(diceX+15,diceY+15,7,7);
      ellipse(diceX+35,diceY+15,7,7);
      ellipse(diceX+15,diceY+25,7,7); 
      ellipse(diceX+35,diceY+25,7,7);
      ellipse(diceX+15,diceY+35,7,7);
      ellipse(diceX+35,diceY+35,7,7);
      diceNum = 6;
    }
  }
}
