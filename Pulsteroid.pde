//Kieran Blair Harvey
//11008231
//HND Computing

class Pulsteroid extends Asteroid {
  
  int incr = 3; //base incrementing value
  
  Pulsteroid(float initialPositionX, float initialPositionY, float initialSpeedX, float initialSpeedY, float initialAsteroidDiameter, color colorOfAsteroid)
  {
    super(initialPositionX, initialPositionY, initialSpeedX, initialSpeedY, initialAsteroidDiameter, colorOfAsteroid);
  }
  
  void displayAsteroid(){
    
    
    float chanceOfPulse = random(0, 100); //chance of a pulsteroid spawning
    if (chanceOfPulse <= 10) {

    asteroidDiameter=asteroidDiameter+incr;
    if(asteroidDiameter>100){incr=incr*-3;} //if Asteroid is larger than 100px it will decrease by 3px every frame
    else if (asteroidDiameter<50){incr=+3;} //if Asteroid is smaller than 50px it will increase by 3px every frame
    
    }

    
    ellipse(positionOnAxisX, positionOnAxisY, asteroidDiameter, asteroidDiameter);  //same code used in normal Asteroid
    fill(asteroidColor);                                                            //same code used in normal Asteroid
    ellipseMode(CENTER);                                                            //same code used in normal Asteroid
    
  }
  
  
}
