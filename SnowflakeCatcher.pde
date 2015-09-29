Snowflake [] storm;
void setup()
{
  size(500, 500);
  storm=new Snowflake[150];
  for (int i=0; i<storm.length; i++)
  {
    storm[i]=new Snowflake();
  }//your code here
}
void draw()
{
  background(0);
  for (int i=0; i<storm.length; i++)
  {
    storm[i].erase();
    storm[i].lookDown();
    storm[i].move();
    storm[i].wrap();
    storm[i].show();//your code here
  }
}
void mouseDragged()
{
  if (mousePressed==true)
  {
    strokeWeight(15);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }//your code here
}

class Snowflake
{
  int x, y;
  boolean isMoving;//class member variable declarations
  Snowflake()
  {
    int x=(int)(Math.random()*501);
    int y=(int)(Math.random()*501);
    isMoving = true;//class member variable initializations
  }
  void show()
  {
    fill(255);
    ellipse(x, y, 5, 5);//your code here
  }
  void lookDown()
  {
    if (get(x,y) !=color(0))
    {
      return false;
    } else {
      return true;
    }
  }
  void erase()
  {
    fill(0);
    ellipse(mX, myY, 10, 10);//your code here
  }
  void move()
  {
    if (isMoving==true)
    {
      y=y+5;//your code here
    }
  }
  void wrap()
  {
    if (y>=500)
    {
      y=0;
      x=(int)(Math.random()*500);
    }
  }
}
Snowflake [] storm;
void setup()
{
  size(500, 500);
  storm=new Snowflake[150];
  for (int i=0; i<storm.length; i++)
  {
    storm[i]=new Snowflake();
  }//your code here
}
void draw()
{
  background(0);
  for (int i=0; i<storm.length; i++)
  {
    storm[i].erase();
    storm[i].lookDown();
    storm[i].move();
    storm[i].wrap();
    storm[i].show();//your code here
  }
}
void mouseDragged()
{
  if (mousePressed==true)
  {
    strokeWeight(15);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }//your code here
}

class Snowflake
{
  int x, y;
  boolean isMoving;//class member variable declarations
  Snowflake()
  {
    int x=(int)(Math.random()*501);
    int y=(int)(Math.random()*501);
    isMoving = true;//class member variable initializations
  }
  void show()
  {
    fill(255);
    ellipse(x, y, 5, 5);//your code here
  }
  void lookDown()
  {
    if (get(x,y) !=color(0))
    {
      return false;
    } else {
      return true;
    }
  }
  void erase()
  {
    fill(0);
    ellipse(mX, myY, 10, 10);//your code here
  }
  void move()
  {
    if (isMoving==true)
    {
      y=y+5;//your code here
    }
  }
  void wrap()
  {
    if (y>=500)
    {
      y=0;
      x=(int)(Math.random()*500);
    }
  }
}
