int numDots;
int x,y;
void setup()
{  
  size(600,600);
  noLoop();
}
void draw()
{
  strokeWeight(1);
  background(70);
  for(y = 0; y < 550 ; y+=50)
  {
    for(x = 0; x < 600; x+=50)
    {
      Die bob = new Die(x,y);
      bob.show();
    }
  }
  text("Dots: " + numDots, 270,570);
  numDots = 0;
  
}
void mousePressed()
{
  redraw();
}
class Die
{  
  int numR,myX,myY;
  Die(int x, int y)
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    numR = (int)((Math.random()*6)+1);
  }
  void show()
  {
    fill(255);
    rect(myX,myY,50,50);
    fill(0);
    if (numR == 1)
    {
      numDots = numDots + 1;
      //text("1", myX+20, myY+30);
      rect(myX + 20,myY+20,10,10);
    }
    else if (numR == 2)
    {
      numDots = numDots + 2;
      //text("2", myX+20, myY+30);
      rect(myX + 9, myY + 22, 10, 10);
      rect(myX + 33, myY + 22, 10, 10);
    }
    else if (numR == 3)
    {
      numDots = numDots + 3;
      //text("3", myX+20, myY+30);
      rect(myX + 8, myY + 8, 10, 10);
      rect(myX + 22, myY + 22, 10, 10);
      rect(myX + 35, myY + 35, 10, 10);
    }
    else if (numR == 4)
    {
      numDots = numDots + 4;
      //text("4", myX+20, myY+30);
      rect(myX + 9, myY + 11, 10, 10);
      rect(myX + 33, myY + 11, 10, 10);
      rect(myX + 9, myY + 35, 10, 10);
      rect(myX + 33, myY + 35, 10, 10);
    }
    else if (numR == 5)
    {
      numDots = numDots + 5;
      //text("5", myX+20, myY+30);
      rect(myX + 8, myY + 11, 10, 10);
      rect(myX + 33, myY + 11, 10, 10);
      rect(myX + 8, myY + 35, 10, 10);
      rect(myX + 33, myY + 35, 10, 10);
      rect(myX + 21, myY + 23, 10, 10);
    }
    else if (numR == 6)
    {
      numDots = numDots + 6;
      //text("6", myX+20, myY+30);
      rect(myX + 7, myY + 9, 10, 10);
      rect(myX + 7, myY + 23, 10, 10);
      rect(myX + 7, myY + 37, 10, 10);
      rect(myX + 31, myY + 9, 10, 10);
      rect(myX + 31, myY + 23, 10, 10);
      rect(myX + 31, myY + 37, 10, 10);
    }
      
  }
}

