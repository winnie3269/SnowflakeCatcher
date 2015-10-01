//use left mouse button to catch the snowflakes
//use right mouse button to erase your lines
Snowflake [] storm;
void setup()
{
  storm=new Snowflake[600];
  for (int i=0; i<storm.length; i++)
  {
    storm[i]=new Snowflake();
  }
  size(500, 500);
  background(0);
  frameRate(8);
  noStroke();//your code here
}
void draw()
{
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
  strokeWeight(5);
  if (mouseButton==RIGHT)
  {
    stroke(0);
  } else
  {
    stroke(#A9E5FA);
  }
  line(mouseX, mouseY, pmouseX, pmouseY);
}

class Snowflake
{
  int x, y;
  int snowSize=5;
  boolean isMoving;//class member variable declarations
  Snowflake()
  {
    x=(int)(Math.random()*500);
    y=(int)(Math.random()*500);
    isMoving = true;//class member variable initializations
  }
  void show()
  {
    fill(255);
    noStroke();
    ellipse(x, y, snowSize, snowSize);//your code here
  }
  void lookDown()
  {
    if (y>=1 && y<=500 && (get(x, y+2)!=color(0)))
    {
      isMoving=false;
    } else 
    {
      isMoving=true;
    }
  }
  void erase()
  {
    fill(0);
    ellipse(x, y, snowSize+3, snowSize+3);//your code here
  }
  void move()
  {
    if (isMoving==true)
    {
      y++;//your code here
    } 
    else
    {
      y=0;
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