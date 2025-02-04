//house chsckpoint 12
float time =-1;
PImage solrock;
float m;
float mm;
float tra;
float trx;

void setup(){
 size(900,600); 
 solrock = loadImage("R.png");
 solrock.resize(100,100);
}

void draw(){
  float r = random(0,255);
  float g = random(0,255);
  float b = random(0,255);
  fill(#49C5E3);
  rect(0,0,width,height);
  ground(400);
  for (int i = 0; i < width*2; i = i+20){
  grass(i,470,#254D0A,0.8);
  grass(i,440,#43930F,0.9);
  grass(i,420,#7FCE4B,1);
  grass(i,400,#254D0A,1.1);
  grass(i,390,#43930F,1.2);
  }
  house(width/2, height/2,400,200, r,g,b); 
  SOLROCK(m, 30);
  for (int i = 0; i < width; i = i+20){
    grass(i,410,#254D0A,1.2);
  grass(i,380,#7FCE4B,1.4);
  grass(i,340,#254D0A,1.6);
  grass(i,240,#43930F,2.4);
  grass(i,250,#62E50C,2.6);
  }
  
  sky();
  
  MOON(mm, 30);
  if (time < 24){
    time = time +0.05;} else{
      time = -1;
    }
    
}


void sky(){
  //if (tra > 255){
  //  tra = -255;
  //} 
  tra = 120 * (sin(((trx + 400)/2)));
  trx = trx+0.01;
 fill(0,0,0, tra*2);
 rect(0,0,width,height);
  
}

void SOLROCK(float x, float y){
  if (m > 1000){
    m = -800;
  }
  m = m+2;
  image(solrock, m, -120 * (sin(((m )/300))) +150);
}

void MOON(float x, float y){
  if (mm > 100){
    mm = -1700;
  }
  mm = mm+2;
  fill(#D0D133);
  circle(x + 900, 120 * (sin(((m )/300))) +150, 50);
}

void ground(int y){
 fill(55,188,94);
 rect(0,y,width,height);
 
  
}

void house(int x, int y, float w, int h, float c, float c2, float c3){
  pushMatrix();
  translate(x,y);
  fill(c,c2,c3);
  rect(0 - (w/2), 0, w, h);
  fill(c3,c,c2);
  triangle(-(w/2),0,0,-100,0+(w/2),0);
  rect(0, h - h/2, w/5, h/2);
  popMatrix();
}
