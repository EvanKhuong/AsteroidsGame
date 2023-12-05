Star[] gerald = new Star[30];
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
  }
  ship.show();
  ship.move();
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
  }


  ship.show();
  ship.move();
}
  ship.show();
  ship.move();
}
