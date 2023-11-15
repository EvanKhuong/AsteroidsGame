Star[] gerald = new Star[30];
public void setup() 
{
  size(600,600);
  for (int i = 0; i<gerald.length; i++)
  {
    gerald[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i<gerald.length; i++)
  {
    gerald[i].show();
  }
  ship.show();
}
public void keyPressed()
{
  if(keyPressed) {
    if (key=='w')
    {
      ship.accelerate(1);
    }
    if (key=='a')
    {
      ship.turn(-10);
    }
     if (key=='s')
    {
      ship.accelerate(-1);
    }
    if (key=='d')
    {
      ship.turn(10);
    }
    if (key=='f')
    {
      ship.hyperspace();
    }
  }
  ship.show();
  ship.move();
}
