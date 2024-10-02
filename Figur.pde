

void Figur(){ //Metode til figur
  fill(255,255,0); // Gul
  rect(x,y,50,50); //Firkant
   
  fill(0); //Sorte øjne
  ellipse(x - 15, y - 10, 10, 10); // Venstre øje
  ellipse(x + 15, y - 10, 10, 10); // Højre øje


 

  fill(255,0,0); //Rød mund
  
  // Laver to arcs så der kommer en rund mund (så snacksne flyver ned i mavsen)
  arc(x, y + 10, 30, 20, 0, PI); // 
   arc(x, y + 10, 30, 20, PI, TWO_PI); // 
  
  
  //Bevægelse: Hvis de bliver true så bliver x eller y variablen ændret med speed
  if(op) { 
    y= y-speed;}
  
   if(ned) {
     y= y+speed; }
     
     if(venstre) {
       x= x-speed; }
      
      if(højre) {
        x= x+speed; }
}
