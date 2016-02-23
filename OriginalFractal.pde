
int dragY=50;
public void setup()
{
     size(1050,1000);
     background(0);
}
     public void draw()
{
     background(0);
     dragY=mouseY;
     sierpinski(50,500,dragY,dragY);
     noLoop();
     
}
public void mouseDragged()//optional
{
     if (Math.random()<.1)
     fill((int)(Math.random()*250),(int)(Math.random()*250),(int)(Math.random()*250));
     redraw();
}
public void sierpinski(int x, int y, int width, int height) {
          if (x>1000)
          {
               ellipse (x,y,width,height);
          }
          else if(x>500)
          {
          ellipse (x,y,width,height);
          sierpinski(x+120,y,width-10,height-10);
          }
          else
          {
          ellipse (x,y,width,height);
          sierpinski(x+120,y,width+10,height+10);
        
            
              }
     }
     
