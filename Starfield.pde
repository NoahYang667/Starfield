Particle [] bob;
void setup()
{
  size(400, 400);
  background(0);
    bob = new Particle[700];
  for(int i = 0; i < bob.length; i++) 
  bob[i] = new Particle();
  for(int j = 0; j < 10; j++)
 bob[j] = new OddBallParticle();
  
}
void draw()
{
  background(0);
  for(int i = 0; i < bob.length; i++){
  bob[i].move();
  bob[i].show();
  }
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle() {
    myX = myY = 200;
    myAngle = Math.random() * 2 * Math.PI;
    mySpeed = Math.random() * 10;
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  }
  void move(){
    myX = myX + (Math.cos(myAngle) * mySpeed);
    myY = myY + (Math.sin(myAngle) * mySpeed);
  }
  void show() {
    fill(myColor);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}

class OddBallParticle extends Particle //inherits from Particle
{
  OddBallParticle(){
     myX = myY = 200;
    myAngle = Math.random() * 2 * Math.PI;
    mySpeed = Math.random() * 1;
    myColor = color(255, 0, 0);
  }
  void move() {
      myX = myX + (int)(Math.random() * 7) - 3;
    myY = myY + (int)(Math.random() * 7) - 3;
  }
  void show() {
    fill(255);
    ellipse((float)myX, (float)myY, 30, 30);
  }
}


