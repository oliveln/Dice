  int sum = 0;
  
  void setup()
  {
      size(500,500);
      noLoop();
      textAlign(CENTER,CENTER);
      
  }
  void draw(){
    sum = 0;
    background(255,255,255);
    for (int placeY = 70; placeY < 420; placeY = placeY + 70){
     for (int placeX = 70; placeX < 420; placeX = placeX+70)
     {
      Die bob = new Die(placeX, placeY);
      bob.roll();
      bob.show();
      sum = sum + bob.rolled;
      }
    }
    
    text("sum: " + sum, 250, 460);
  }
  
  
  void mousePressed()
  {
      redraw();
  }
  
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX, myY;
      int rolled;
     
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
      }
      void roll()
      {
      rolled = (int)(Math.random()*6)+1;
      }
      void show()
      {
       fill(255,255,255);
       rect(myX, myY,70,70);
       fill(0,0,0);
       text(rolled, myX+35,myY+35);
      }
  }
