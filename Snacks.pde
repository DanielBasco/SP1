// Når snacks bliver samlet op bliver speed øget
Snacks[] snacks = new Snacks[4]; //Array til at holde 4 snacks der skal spawnes på skærmen

//En klasse  konstruktør til mine snacks
class Snacks {
  
  // Instansvariabler
  float posX; 
  float posY;
  
// Konstruktør til mine snacks
Snacks(float randomX,float randomY){
posX = randomX;
posY = randomY;
}


void display() { //Min snack der bliver vist
  fill(175,240,210);
  ellipse(posX, posY, 10,10);
}

//Metode med returtype boolean til at samle snacks op hvis distancen mellem figur og snacks er mindre end 15.
boolean samlOp() {
 float distance = dist(x,y,posX,posY); //Afstand mellem figur og snack
 if (distance <15) { //Distance mellem figur og snack
  return true; }
  else { return false; }
}
}

  
