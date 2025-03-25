//Orb o1, o2, o3; //testing orbs
int MOVING = 0;
int BOUNCE = 1;
int GRAVITY =2;
int SPRING =3;
int DRAGF =4;
int CUSTOMF =5;
int COMBINATION =6;
boolean[] toggles = new boolean[7];
String[] modes = {"Moving", "Bounce", "Gravity", "Spring" , "Drag", "Custom", "Combination"};

void setup() {
  size(1000,1000);
  background(255);
  
  
  //testing
  //println(toggles[MOVING] );
}//setup

void draw() {
  println(toggles[MOVING] );
  displayMode();
}//draw

/* gravityArena
orbs will be randomly placed around a fixedorb
when ran, the orbs will be attracted towards the fixedorb
*/
void gravityArena() {}
/*dragArena
multiple and random shapes in the background
any orb that is within a shape will be slowed down
*/
void dragArena() {}
/*customArena
havent decided but I think this one will include every arena
*/
void customArena() {}
/*springArena
orbs connected to a "spring" and (either one or two) fixed orbs
*/
void springArena() {}
/*combinationArena
arena uses both forces
*/
void combinationArena() {}


void keyPressed() {
  if (key == ' ') { toggles[MOVING] = !toggles[MOVING]; }
  if (key == 'g') { toggles[GRAVITY] = !toggles[GRAVITY]; }
  if (key == 'b') { toggles[BOUNCE] = !toggles[BOUNCE]; }
  if (key == 'd') { toggles[DRAGF] = !toggles[DRAGF]; }
  if (key == 'c') {toggles[CUSTOMF] = !toggles[CUSTOMF]; }
  if (key == 's') {toggles[SPRING] = !toggles[SPRING]; }
  if (key == 'a') {toggles[COMBINATION] = !toggles[COMBINATION]; }
  
  
}//keybinds

void displayMode() {
  textAlign(LEFT, TOP);
  textSize(20);
  noStroke();
  int x = 0;

  for (int m=0; m<toggles.length; m++) {
    //set box color
    if (toggles[m]) { fill(0, 255, 0); }
    else { fill(255, 0, 0); }

    float w = textWidth(modes[m]);
    rect(x, 0, w+5, 20);
    fill(0);
    text(modes[m], x+2, 2);
    x+= w+5;
  }
}//display
