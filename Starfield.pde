class Particle {
  double myX, myY, myAngle, mySpeed, mySize;
  Particle(int x, int y) {
    myX = x;
    myY = y;
    mySize = 6;
    mySpeed = Math.random()*10;
    myAngle = Math.random()* (2Math.PI);
  }
  void move()
  {
    myX = myX + (Math.cos(myAngle)mySpeed);
    myY = myX + (Math.sin(myAngle)mySpeed);
  }
  void show()
  {
    fill((int)(Math.random()255), (int)(Math.random()255), (int)(Math.random()255));    
    noStroke();
    ellipse(myX, myY, mySize, mySize);
  }
}
class OddBallParticle extends Particle {
  OddBallParticle() {
    mySize = 6;
    mySpeed = Math.random()*10;
    myAngle = Math.random()* (2Math.PI);
    void move()
    {
      myX = myX + (Math.cos(myAngle)mySpeed);
      myY = myX + (Math.sin(myAngle)mySpeed);
    }
    void show()
    {
      fill((int)(Math.random()255), (int)(Math.random()255), (int)(Math.random()255));    
      noStroke();
      ellipse(myX, myY, mySize, mySize);
    }
  }
  Particle [] bob = new Particle [1000];
  void setup() {
    size(400, 400);
    frameRate(60);
    for (int i = 0; i < bob.length; i++) {
      bob[i] = new Particle(250, 250);
    }
  }
  void draw() {
    background(0);
    for (int i = 0; i < bob.length; i++) {
      bob[i].move();
      bob[i].show();
    }
  }//end
