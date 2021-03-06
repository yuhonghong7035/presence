// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain

// Pong
// https://youtu.be/IIrC5Qcb2G4

//import processing.sound.*;

Puck puck;

//SoundFile ding;

Paddle left;
Paddle right;

int leftscore = 0;
int rightscore = 0;

void setup() {
  size(600, 400);
  //ding = new SoundFile(this,"ding.mp3");
  puck = new Puck();
  left = new Paddle(true);
  right = new Paddle(false);
}

void draw() {
  background(0);
  left.move(mouseY);

  //puck.checkPaddle(left);
  puck.checkPaddleRight(right);
  puck.checkPaddleLeft(left);

  left.show();
  right.show();
  left.update();
  right.update();

  puck.update();
  puck.edges();
  puck.show();

  fill(255);
  textSize(32);
  text(leftscore, 32, 40);
  text(rightscore, width-64, 40);
}