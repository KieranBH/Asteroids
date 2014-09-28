class Pulsteroid extends Asteroid {
  
  
  
  Pulsteroid(float initialPositionX, float initialPositionY, float initialSpeedX, float initialSpeedY, float initialAsteroidDiameter, color colorOfAsteroid)
  {
    super(initialPositionX, initialPositionY, initialSpeedX, initialSpeedY, initialAsteroidDiameter, colorOfAsteroid);
  }
  
  void displayAsteroid(){
    
    
    float chanceOfPulse = random(0, 100);
    if (chanceOfPulse <= 10) {

    asteroidDiameter=asteroidDiameter+incr;
    if(asteroidDiameter>100){incr=incr*-3;}
    else if (asteroidDiameter<50){incr=+3;}
    
    }

    
    ellipse(positionOnAxisX, positionOnAxisY, asteroidDiameter, asteroidDiameter);
    fill(asteroidColor);                                                             //
    ellipseMode(CENTER);      
    
  }
  
  
}
