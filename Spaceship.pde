class Asteroid extends Floater
{
  private double myRspeed;
  public Asteroid()
  {
   myRspeed = Math.random()*5;
   corners = 4;
   myColor = 100;
   myCenterX = (Math.random()*600);
   myCenterY = (Math.random()*600);
   myXspeed = (Math.random()*10)-5;
   myYspeed = (Math.random()*10)-5;
   myPointDirection = (Math.random()*360);
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0]=-15;
   yCorners[0]=15;
   xCorners[1]=15;
   yCorners[1]=15;
   xCorners[2]=15;
   yCorners[2]=-15;
   xCorners[3]=-15;
   yCorners[3]=-15;
  }
  public void move(){
    turn(myRspeed);
    super.move();
  }
  public float getAX(){
    return (float) myCenterX;
  }
  public float getAY(){
    return (float) myCenterY;
  }
}
