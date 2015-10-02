//use left mouse button to catch the snowflakes
//use right mouse button to erase your lines
Snowflake [] storm;
void setup()
{
  storm=new Snowflake[300];
  for (int i=0; i<storm.length; i++)
  {
    storm[i]=new Snowflake();
  }
  size(500, 500);
  background(0);
  frameRate(10);
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
  if (mouseButton==RIGHT)
  {
    stroke(0);
  } else
  {
    stroke(0,120,250,200);
  }
  strokeWeight(5);
  line(mouseX, mouseY, pmouseX, pmouseY);
  noStroke();
}
class Snowflake
{
  int x, y, snowSize;
  boolean isMoving;//class member variable declarations
  Snowflake()
  {
    x=(int)(Math.random()*500);
    y=(int)(Math.random()*500);
    snowSize=(int)(Math.random()*6);
    isMoving = true;//class member variable initializations
  }
  void show()
  {
    noStroke();
    fill(255);
    ellipse(x, y, snowSize, snowSize);//your code here
  }
   void lookDown()
  {
    if (y>0 && y<490 && get(x, y+4)!= color(0))
    {
        isMoving=false;
        fill(0);
        ellipse(x, y, 0, 0);
    }else
    {
      isMoving=true;
      fill(0);
      ellipse(x, y, snowSize+3, snowSize+3);
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
   // else
   // {
   //   y=0;
    //}
  }
  void wrap()
  {
    if (y>499)
    {
      y=0;
      x=(int)(Math.random()*500);
    }
  }
}