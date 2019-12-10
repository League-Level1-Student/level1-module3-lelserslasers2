int x = 293;
int y = 293;
int birdYVelocity = 60;
int gravity = 2;
int movePost = 600;
int postSize = (int)random(401)+50;
int movePost2 = 600;
int postSize2 = (int)random(401)+50;
boolean move1 = true;
boolean move2 = false;

void mousePressed(){
  y = y - birdYVelocity;
}

boolean touchPipe(){
  int colors = get(x, y);
  if (colors == #009600){
    return true;
  }
  else{
    return false;
  }
}

void drawPipe(int size, int xPos){
  fill(0, 150, 0);
  stroke(0, 150, 0);
  rect(xPos, 0, 25, 500-size);
  rect(xPos, 600-size, 25, size);
}

void setup(){
  size(600,600);
}

void draw(){
  background(0, 0, 150);
  y = y + gravity;
  
  if (move1){
    movePost = movePost - 3;
    drawPipe(postSize, movePost);
  }
  if (move2){
    movePost2 = movePost2 - 3;
    drawPipe(postSize2, movePost2);
  }
  if (movePost < 250 && move2 == false){
     move2 = true;
     print("2");
  }
  if (movePost2 < 250 && move1 == false){
     move1 = true;
     print("1");
  }
  if (movePost < 0){
     movePost = 600;
     postSize = (int)random(401)+50;
     move1 = false;
  }
  if (movePost2 < 0){
     movePost2 = 600;
     postSize2 = (int)random(401)+50; 
     move2 = false;
  }
  
  fill(150, 0, 0);
  stroke(150, 0, 0);
  ellipse(x, y, 15, 15);
  
}
