Die bob;
int dieTotal = 0;
void setup() {
  background(208,217,179);
  size(470, 500);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  noLoop();
 
}
void draw() {
  for(int y = 70 ; y <400  ; y = y+62) {
    for(int x = 70 ; x <= 400 ; x = x+62){
    Die bob = new Die(x, y);
    bob.roll();
    bob.show();
    if ( bob.rolled==1){
      dieTotal = dieTotal + 1;
    }else if (bob.rolled == 2){
      dieTotal = dieTotal + 2;
    }else if (bob.rolled == 3){
      dieTotal = dieTotal + 3;
    }else if (bob.rolled == 4){
      dieTotal = dieTotal + 4;
    }else if (bob.rolled == 5){
      dieTotal = dieTotal + 5;
    }else if (bob.rolled == 6){
      dieTotal = dieTotal + 6;
    }
}
}
  fill(128,128,128);
     ellipse(235,460,170,60);
     fill(255);
     textSize(11);
     text("Total = "+ dieTotal,235,460);
     dieTotal = 0;
   
}
void mousePressed() {
  redraw();
}
class Die { //models one single dice cube
  //member variable declarations here
  int rolled;
  int myX, myY;

  Die(int x, int y) { //constructor
    //variable initializations here
    rolled = 1;
    myX = x;
    myY = y;
  }
  void roll() {

    rolled = (int)(Math.random()*6)+1 ;
  }
  void show() {
    fill(255);
    rect(myX, myY, 60, 60);
    fill(0);
    if (rolled == 1) {
      ellipse(myX,myY,10,10);
    } else if (rolled ==2) {
      ellipse(myX-20,myY+20,10,10);
      ellipse(myX+20,myY-20,10,10);
    } else if (rolled ==3) {
      ellipse(myX-20,myY+20,10,10);
      ellipse(myX+20,myY-20,10,10);
      ellipse(myX,myY,10,10);
    } else if (rolled ==4) {
      ellipse(myX-20,myY+20,10,10);
      ellipse(myX+20,myY-20,10,10);
      ellipse(myX-20,myY-20,10,10);
      ellipse(myX+20,myY+20,10,10);
    } else if (rolled ==5) {
      ellipse(myX-20,myY+20,10,10);
      ellipse(myX+20,myY-20,10,10);
      ellipse(myX-20,myY-20,10,10);
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX,myY,10,10);
    } else {
      ellipse(myX-20,myY+20,10,10);
      ellipse(myX+20,myY-20,10,10);
      ellipse(myX-20,myY-20,10,10);
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX-20,myY,10,10);
      ellipse(myX+20,myY,10,10);
    }
  }
}
