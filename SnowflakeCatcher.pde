Snowflake sill;
Snowflake [] storm;
void setup()
{
  size(500,500);
  storm=new Snowflake[100];
  for (int i=0; i<Snowflake.length; i++)
  {
    storm[i]=new Snowflake;
  }//your code here
}
void draw()
{
  background(0);
  sill= new Snowflake();//your code here
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  int x,y;
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
    ellipse(x,y,5,5);//your code here
  }
  void lookDown()
  {
    if (y==501 && //your code here
  }
  void erase()
  {
    //your code here
  }
  void move()
  {
    //your code here
  }
  void wrap()
  {
    //your code here
  }
}
