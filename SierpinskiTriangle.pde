public void setup()
{
 size(700,700);
 background(255);
}
public void draw()
{
 sierpinski(100,600,500);
}

public void sierpinski(int x, int y, int len) 
{
 fill((int)(Math.random()*256),50,(int)(Math.random()*256),(int)(Math.random()*256));
 if(len<=30) triangle(x,y,x+len,y,x+len/2,y-len);
 else{
   sierpinski(x,y,len/2);
   sierpinski(x+len/2,y,len/2);
   sierpinski(x+len/4,y-len/2,len/2);
 }
}
