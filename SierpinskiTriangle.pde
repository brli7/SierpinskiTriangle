int tall = 500;
int size = 50;

public void setup(){
  size(520,520);
  noStroke();
}
public void draw(){
  background(192);
  sierpinski(10,510,tall,size); /*
  if(mousePressed) {
    tall = 520-mouseY;
    size = Math.abs(mouseX/2);
    if(mouseX > 0 && mouseX < 510) {
      fill(Math.abs(mouseX)/2,0,0);
    }
  } */
}
public void sierpinski(int x, int y, int len, int limit) {
  if(len <= limit) {
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
