void setup()
{
  size(300,350);
  noLoop();
}
void draw()
{
  

int sum = 0;
  background(23,203,199);

  for(int x = 0; x <= 250; x = x+ 80)
  {
  for(int y = 0; y <= 250; y = y + 80)
  {
    Die theDie = new Die(x,y);
  
    theDie.show();
    theDie.roll();
      sum = sum + theDie.myValue;
  }
  
}
strokeWeight(3);
textSize(45);
   text("Total: " + sum, 4,340);
  
}

void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  int myValue;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myValue = (int)(Math.random()*6+1);
    myX = x;
    myY = y;
  }
  void roll()
  {
   
  }
  void show()
  {
    strokeWeight(3);
  fill(175,32,32);
  rect(myX,myY,50,50,10);
  
   //one
    if(myValue == 1)
    {
    
      fill(0);
      ellipse(myX+25,myY+25,5,5);
    }
    //two
    if(myValue == 2)
    {
      fill(0);
      ellipse(myX+17,myY+25,5,5);
      ellipse(myX+33,myY+25,5,5);
    }
    //three
    if(myValue == 3)
    {
      fill(0);
      ellipse(myX+13,myY+13,5,5);
      ellipse(myX+37,myY+37,5,5);
      ellipse(myX+25,myY+25,5,5);
    }
    //four
    if(myValue == 4)
    {
      fill(0);
      ellipse(myX+17,myY+35,5,5);
      ellipse(myX+33,myY+35,5,5);
      ellipse(myX+17,myY+15,5,5);
      ellipse(myX+33,myY+15,5,5);

    }
    //five
    if(myValue == 5)
    {

      fill(0);
      ellipse(myX+17,myY+35,5,5);
      ellipse(myX+33,myY+35,5,5);
      ellipse(myX+17,myY+15,5,5);
      ellipse(myX+33,myY+15,5,5);
      ellipse(myX+25,myY+25,5,5);
    }
    
    //six
    if(myValue == 6)
    {
      fill(0);
      ellipse(myX+17,myY+37,5,5);
      ellipse(myX+33,myY+37,5,5);
      ellipse(myX+17,myY+25,5,5);
      ellipse(myX+33,myY+25,5,5);
      ellipse(myX+17,myY+13,5,5);
      ellipse(myX+33,myY+13,5,5);
    }
  
  }
}
