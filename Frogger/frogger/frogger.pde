int x = 400;
int y = 575;
int oldX;
int oldY;
Car car1 = new Car(0, 100, 75, 7);
Car car2 = new Car(800, 225, 150, -12);
Car car3 = new Car(0, 350, 75, 12);
Car car4 = new Car(800, 475, 30, -5);

class Car{
  int xPos;
  int yPos;
  int size;
  int speed;
  int startX;
  
  Car(int xPos, int yPos, int size, int speed){
    this.startX = xPos;
    this.xPos = xPos;
    this.yPos = yPos;
    this.size = size;
    this.speed = speed;
  }
  
  int getY(){
    return yPos;
  }
  
  int getX(){
   return xPos; 
  }
  
  int getSize(){
   return size; 
  }
  
  void display()
  {
    fill(150, 0, 0);
    rect(xPos, yPos, size, 50);
  }
  
  void move(){
    xPos = xPos + speed;
    offScreen();
  }
  
  void offScreen(){
    if (xPos > width || xPos < 0){
      xPos = startX;
      
    }
  }
}

boolean intersects(Car car) {
 if ((y > car.getY() && y < car.getY()+50) &&
                (x > car.getX() && x < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
}


void keyPressed()
{
  oldX = x;
  oldY = y;
  int moveSize = 15;
    if(key == CODED){
        if(keyCode == UP)
        {
            y = y - moveSize;
        }
        else if(keyCode == DOWN)
        {
            y = y + moveSize;
        }
        else if(keyCode == RIGHT)
        {
            x = x + moveSize;
        }
        else if(keyCode == LEFT)
        {
            x = x - moveSize;
        }
    }
    
    if (x > 800 || x < 0 || y > 600 || y < 0){
      x = oldX;
      y = oldY;
    }
}


void setup(){
  size(800, 600);
}

void draw(){
  background(0,0,150);
  car1.move();
  car1.display();
  car2.move();
  car2.display();
  
  car3.move();
  car3.display();
  car4.move();
  car4.display();
  fill(0, 150, 0);
  ellipse(x, y, 25, 25);
  if (intersects(car1) || intersects(car2)){
    print("Oof! ");
    x = 400;
    y = 575;
  }
}
