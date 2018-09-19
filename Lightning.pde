int startX = 150;
int startY = 50;
int endX = 150;
int endY = 150;
void setup()
{
  size(300,300);
  strokeWeight(3);
  background(0,0,0);
}
void draw()
{
  cloud();
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  while (endY <= 300)
  {
    endY = startY + (int)(Math.random()*10);
    endX = startX + ((int)(Math.random()*20)-9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 150;
  startY = 50;
  endX = 150;
  endY = 150;
}
void cloud()
{
  fill(255);
  stroke(255);
  ellipse(150,50,50,50);
  ellipse(130,50,40,40);
  ellipse(170,50,40,40);
}

