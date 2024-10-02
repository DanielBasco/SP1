float x = 400; //Start x
float y = 400; //Start y
float speed = 2; //Speed variable



void setup(){
  size(800,800);
  rectMode(CENTER);
 for (int i = 0; i<snacks.length; i++) { //Forløkke til at køre min tilfældig snack linje
   snacks[i] = new Snacks(random(1,701), random(1,701)); //Tilfældig snack indenfor 700x700

 }
}

void draw(){
background(150,215,230); //Lyseblå/Himmel baggrundsfarve
Figur(); //Min tegning af figuren
rammer(); //Så figur ikke kan undslippe min size(800,800)

for (int i = 0; i<snacks.length; i++) {
snacks[i].display();

if(snacks[i].samlOp()){
  speed +=0.1; //Øger figurs hastighed med 1
   snacks[i] = new Snacks(random(1,701), random(1, 701)); //Tilfjøjer ny snack til spillet
}
}
}
