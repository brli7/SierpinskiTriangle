int tall = 500;
int sizer = 200;

public void setup(){
  size(520,520);
}
public void draw(){
  background(192);
  sierpinski(260-(tall/2),510,tall,sizer);
  if(mousePressed) {
    tall = 520-mouseY;
    sizer = Math.abs(mouseX/2);
  }
}
public void sierpinski(int x, int y, int len, int limit) {
  if(len <= limit) {
    //triangle(x,y , x+len,y , x+len/2,y-len);
    beginShape();
    vertex(x,y);
    vertex(x+len,y);
    vertex(x+len/2,y-len);
    endShape();
  } else {
    sierpinski(x,y,len/2,limit);
    sierpinski(x+len/2,y,len/2,limit);
    sierpinski(x+len/4,y-len/2,len/2,limit);
  }
}
