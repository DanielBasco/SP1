/* Bevægelse til figur. Prøvede at lave bevægelse uden booleans og det fungerede fint, men der var visse fejl. Når man holdte d inde og derefter w inde
og slap d så fordi man stadig holdte w inde, ville den gå d-sretning. Tilføjede keyReleased men virkede ikke. Men efter lidt hjælp ændrede
jeg bevægelse til booleans (true : false) og det virkede perfekt. */

// Mine booleans variable starter med at være false
boolean op = false;
boolean ned = false;
boolean venstre = false;
boolean højre = false;

void keyPressed() {
  
    if (key == 's') { //Hvis 's' trykkes bliver ned true
    ned = true; } 
    
    else if( key == 'w') { //Hvis 'w' trykkes bliver op true
    op = true; }
    
      else if ( key == 'a') {//Hvis 'a' trykkes bliver venstre true
      venstre = true; }
      
        else if ( key == 'd' ) {//Hvis 'd' trykkes bliver højre true
        højre = true;
        }
  }
  

  void keyReleased (){
    
  if (key == 's') { //Hvis 's' slippes bliver ned false
    ned = false; }
    
  else if( key == 'w') { //Hvis 'w' slippes bliver op false
     op = false; }
     
      else if ( key == 'a') {//Hvis 'a' slippes bliver venstre false
        venstre = false; }
        
        else if ( key == 'd' ) {//Hvis 'd' slippes bliver højre false
      højre = false; }
  }


void rammer(){ //Sørger for at cirklen aldrig kommer ud af rammen
  if (x >= width) { //Hvis x er samme som width eller større så sæt x tilbage til width men lige 5 pixels længere væk fra width
          x = width-5;}
    else if (x <= 0) { //Og det samme på på den anden side
      x = 5; }
      
        else if (y >= height) {
          y = height-5;  // Og det samme med højden
        }
        else if(y <= 0) {
          y = 5; }
} //På siden (Figur) har jeg lavet videre på beægelse, altså x og y ændres hvis de bliver true
