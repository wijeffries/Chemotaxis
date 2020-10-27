Chemotaxis[] bruh = new Chemotaxis[300];
boolean click;
void setup()
{
  size(400,400);
  for (int i = 0; i < bruh.length; i++) {
    bruh[i] = new Chemotaxis();
  }
}
void draw()
{
  background(255);
  for (int i = 0; i < bruh.length; i++) {
    bruh[i].move();
    bruh[i].show();
    bruh[i].mouse();
  }
}
void mousePressed()
  {
     click = true;
  }
class Chemotaxis
{
  int myX;
  int myY;
  int[] col = new int[3];
  Chemotaxis ()
  {
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
  }
  void move()
  {
    myX = myX + (int)(Math.random()*6 - 3);
    myY = myY + (int)(Math.random()*6 - 3);
  }
  void show()
  {
    fill(col[0], col[1], col[2]);
    stroke(0);
    ellipse(myX, myY, 10, 10);
  }
  void mouse()
  {
    if ((mouseX + 5 > myX && mouseX - 5 < myX) && (mouseY + 5 > myY && mouseY - 5 < myY) && click == true) {
      for (int i = 0; i < col.length; i++) {
        col[i] = (int)(Math.random()*256);
      }
      click = false;
    }
  }
}
