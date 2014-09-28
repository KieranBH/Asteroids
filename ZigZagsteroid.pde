class ZigZagsteroid extends Asteroid {
  
  
  
  ZigZagsteroid(float initialPositionX, float initialPositionY, float initialSpeedX, float initialSpeedY, float initialAsteroidDiameter, color colorOfAsteroid)
  {
    super(initialPositionX, initialPositionY, initialSpeedX, initialSpeedY, initialAsteroidDiameter, colorOfAsteroid);
  }
  
  void moveAsteroid(){
    
    float chanceOfZigZag = random(0, 100);
    
    if (chanceOfZigZag <= 10) {
      
      float tempSpeed = speedInX;
      speedInX = speedInY;
      speedInY = tempSpeed;


    }
    
    positionOnAxisX = positionOnAxisX + speedInX;
    positionOnAxisY = positionOnAxisY + speedInY;
    
  }
  
  
}
