void grass(int x, int y, color c,float s){
  pushMatrix();
  scale(1,s);
  noStroke();
  fill(c);
  translate(x,y);
  grassbottom(0,0);
  grasstop(0,0);
  popMatrix();
  
}

void grassbottom(int x,int y){
  rect(x,y,20,30);
}
void grasstop(int x,int y){
  triangle(x,y,random(0,20),random(1,50) * -1,20,y);
}
