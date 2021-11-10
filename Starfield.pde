class Particle {
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle() {
    mySpeed = Math.random()*10;
    myAngle = Math.random()*(Math.PI);
    myX = Math.cos(myAngle)*mySpeed+300;
    myY = Math.sin(myAngle)*mySpeed+300;
    myColor = color(225);
  }
  void move()
  {
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  void show()
  {
    fill(myColor);    
    noStroke();
    ellipse((float)myY, (float)myX, 10, 10);
  }
}
class OddBallParticle extends Particle {
  OddBallParticle() {
    mySpeed = Math.random()*10;
    myAngle = Math.random()*(Math.PI);
    myX = Math.cos(myAngle)*mySpeed +400;
    myY = Math.sin(myAngle)*mySpeed +400;
    myColor = color(25);
  }
  void move()
  {
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  void show() {
    fill(225);    
    ellipse ((float)myX, (float)myY, 50, 50);
  }
}
Particle [] bob = new Particle [1000];
void setup() {
  size(500, 500);
  frameRate(144);
  for (int i = 0; i <4; i++) {
    bob[i] = new OddBallParticle();
  }
  for (int i = 4; i < bob.length; i++) {
    bob[i] = new Particle();
  }
}
void draw() {
  background(0);
  pew();
  for (int i = 0; i < bob.length; i++) {
    bob[i].move();
    bob[i].show();
  }
}
void pew() {
  fill(178);
  rect(150, 250, 100, 50);//mainbody
  fill(84, 217, 252);
  rect(170, 254, 60, 40);//inner tube
  fill(226, 253, 28);
  rect(250, 250, 20, 50);//barrel
}

