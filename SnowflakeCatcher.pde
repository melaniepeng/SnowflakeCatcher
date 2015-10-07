Snowflake [] me;
boolean click = true;
void setup()
{
  size(400,400);
  me = new Snowflake[150];
  for (int i = 0; i < me.length; i++)
  {
    me[i] = new Snowflake();
  }
  background(0,191,255);
}
void draw()
{
  mouseDragged();
  for (int i = 0; i < me.length; i++)
  {
    me[i].lookDown();
    me[i].erase();
    me[i].move();
    me[i].wrap();
    me[i].show();
  }
  
}
void mouseDragged()
{
  if (mousePressed == true)
  {
    fill(0);
    ellipse(mouseX,mouseY,15,15);
  }
}

class Snowflake
{
  int x,y;
  boolean isMoving;
  Snowflake()
  {
    x = (int)(Math.random()*400);
    y = (int)(Math.random()*400);
    isMoving = true;
  }
  void show()
  {
    fill(255);
    noStroke();
    ellipse(x,y,10,10);
  }
  void lookDown()
  {
    if (get(x-8,y+8) == color(0,0,0)||get(x+8,y+8) == color(0,0,0))
    {
      isMoving = false;
    }
    else 
    {
      isMoving = true;
    }
    if (keyPressed)
    {
      if (key =='d'||key =='D')
      {
        background(0,191,255);

      }
    }
  }
  void erase()
  {
    fill(0,191,255);
    noStroke();
    ellipse(x, y,12,12);
  }
  void move()
  {
    if (isMoving == true)
    {
      y++;
    }
  }
  void wrap()
  {
    if(y > 400)
    {
      x = (int)(Math.random()*400);
      y = 0;
    }
  }
}


