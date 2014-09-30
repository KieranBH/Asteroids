class Asteroid {
  
  float positionOnAxisX;
  float positionOnAxisY;
  float speedInX;
  float speedInY;
  color asteroidColor;
  float asteroidDiameter;
  float asteroidRadius;
  
  Asteroid (float initialPositionX, float initialPositionY, float initialSpeedX, float initialSpeedY, float initialAsteroidDiameter, color colorOfAsteroid) 
  {
    positionOnAxisX = initialPositionX;
    positionOnAxisY = initialPositionY;
    speedInX = initialSpeedX;
    speedInY = initialSpeedY;
    asteroidColor = colorOfAsteroid;
    asteroidDiameter = initialAsteroidDiameter;
    asteroidRadius = initialAsteroidDiameter/2;
  }
  
  void displayAsteroid () {
    noStroke();
    fill(asteroidColor);                                                             //
    ellipseMode(CENTER);                                                             // set drawing mode
    ellipse(positionOnAxisX, positionOnAxisY, asteroidDiameter, asteroidDiameter);   // draw Ball One
  }

  void moveAsteroid() {

    // Add the current speed to the x and y locations.
    positionOnAxisX = positionOnAxisX + speedInX;
    positionOnAxisY = positionOnAxisY + speedInY;

  }
  
  boolean checkBoundaryConditions () {

    // Remember, || means "or."

    if (((positionOnAxisX - asteroidRadius) > width) || ((positionOnAxisX + asteroidRadius) < 0)
      || ((positionOnAxisY - asteroidRadius) > height) || ((positionOnAxisY + asteroidRadius) < 0)) {

      return true;
    }
    else {
      return false;
    }
  }
}



