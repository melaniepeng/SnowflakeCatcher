Snowflake [] me;
void setup()
{
  size(400,400);
  me = new Snowflake[100];
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
    me[i].erase();
    //me[i].lookDown();
    me[i].move();
    me[i].wrap();
    me[i].show();
  }
 // for (int i = 0;)
  
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
    // if (y < 0 || y > 400 || get(x,y) == color(255,255,255))
    // {
    //   isMoving = false;
    // }
    // else 
    // {
    //   isMoving = true;
    // }
  }
  void erase()
  {
    fill(0,191,255);
    noStroke();
    ellipse(x, y,11,11);
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


