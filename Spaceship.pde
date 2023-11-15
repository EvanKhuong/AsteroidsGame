Spaceship ship = new Spaceship();
class Spaceship extends Floater  
{   
  public Spaceship()
  {
    corners = 3;
    myColor = 255;
    myCenterX = myCenterY = 300;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0]=-10;
    yCorners[0]=10;
    xCorners[1]=-10;
    yCorners[1]=-10;
    xCorners[2]=30;
    yCorners[2]=0;
  }
  public void hyperspace()
  {
    myXspeed=0;
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myPointDirection = (int)(Math.random()*360);
  }
}
