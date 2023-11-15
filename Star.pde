class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myThickness;
  public Star()
  {
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    myThickness = (int)(Math.random()*40)-20;
  }
  public void show()
{
  fill(100);
  ellipse(myX,myY,myThickness,myThickness);
}
}
