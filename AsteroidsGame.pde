Star[] gerald = new Star[30];
ArrayList <Bullet> shoot = new ArrayList <Bullet>();
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
public void setup() 
{
  size(600,600);
  for (int i = 0; i<gerald.length; i++)
  {
    gerald[i] = new Star();
  }
  for (int i=0; i<25; i++)
  {
    rock.add(new Asteroid());
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i<gerald.length; i++)
  {
    gerald[i].show();
  }
  for (int i = 0; i<rock.size(); i++)
  {
    rock.get(i).show();
    rock.get(i).move();
    float distance = dist(ship.getX(), ship.getY(), rock.get(i).getAX(), rock.get(i).getAY());
    if (distance<30){
      rock.remove(i);
    }
    for (int j = 0; j<shoot.size(); j++)
    {
      float distanceb = dist(shoot.get(j).getBX(),shoot.get(j).getBY(),rock.get(i).getAX(),rock.get(i).getAY());
      if (distanceb<25){
      rock.remove(i);
      shoot.remove(j);
      j--;
      break;
    }
    }
  }
  ship.show();
  ship.move();
  for (int i = 0; i<shoot.size(); i++)
  {
    shoot.get(i).move();
    shoot.get(i).show();
  }
}
public void keyPressed()
{
  if (keyPressed)
  {
    if (key=='w')
    {
      ship.accelerate(0.5);
    }
    if (key=='a')
    {
      ship.turn(-10);
    }
     if (key=='s')
    {
      ship.accelerate(-0.5);
    }
    if (key=='d')
    {
      ship.turn(10);
    }
    if (key=='f')
    {
      ship.hyperspace();
    }
    if (key=='e')
    {
      shoot.add(new Bullet(ship));
    }
  }


  ship.show();
  ship.move();
}
