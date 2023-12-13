class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
    myCenterX=theShip.getX();
    myCenterY=theShip.getY();
    myXspeed = myYspeed = 0;
    myPointDirection = theShip.getPointDirection();
    accelerate(6);
  }
  public void show()
  {
    fill(0,255,200);
    ellipse((float)getBX(),(float)getBY(),10,10);
  }
  public float getBX(){
    return (float) myCenterX;
  }
  public float getBY(){
    return (float) myCenterY;
  }
}
