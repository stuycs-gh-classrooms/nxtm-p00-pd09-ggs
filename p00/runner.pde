Orb o1, o2, o3; //testing orbs

int SPRING_LENGTH = 100;
float SPRING_K = 1;

int MOVING = 0;
int BOUNCE = 1;
int GRAVITY =2;//oribtal motion
int SPRING =3;
int DRAGF =4;
int CUSTOMF =5;
int COMBINATION =6;
int ORDERED =7;
int FRONT = 8;
boolean[] toggles = new boolean[9];
String[] modes = {"Moving", "Bounce", "Gravity", "Spring" , "Drag", "Custom", "Combination", "Ordered","Front"};

OrbArray nodez;
FixedOrb earth;
PVector gravitydown;


void setup() {
  size(1000,800);
  background(255);
  gravitydown = new PVector(0,0.1);
  
  earth = new FixedOrb(width/2 , height/2, 200, 10000);
  //originally, earth's FixedOrb's parameters are (width/2, height/2, 200, 10000)
  //this prevents the orb from appearing in random places around the screen
  nodez = new OrbArray();
  nodez.populate(5,toggles[ORDERED]); //front + 5 extra
  
  //testing
  o1 = new Orb();
  //println(toggles[MOVING] );
}//setup

void draw() {
  background(255);
  if (toggles[GRAVITY]) { earth.display(); }
  
  
  nodez.display();
  if (toggles[MOVING] ) {
    if (toggles[SPRING] ) {
      nodez.applySprings(SPRING_LENGTH, SPRING_K);
    }//sprung
    
    if (toggles[GRAVITY] ) {
      //earth.display();
      nodez.applyGravity(earth, 0.1);
      //note: i can maKE THE g constant negative to instead have the orbs push themselves away from the fixedorb
    }//oribtal
    
    if (toggles[DRAGF]) {
      nodez.applyDrag(0.2);
    }//drag
  
  }//moving is true
  displayMode();
  //testing
  //println(toggles[MOVING] );
  //o1.display();
  //o1.move(toggles[MOVING]);
  //o1.applyForce(gravitydown);
}//draw

/* gravityArena
orbs will be randomly placed around a fixedorb
when ran, the orbs will be attracted towards the fixedorb
*/
void gravityArena() {}
/*dragArena
multiple shapes in the background
any orb that is within a shape will be slowed down
there will be a keybind eventually to add and drag rectangles
*/
void dragArena() {
stroke(#800080);

}//dragArena
/*customArena
havent decided but I think this one will include every arena
*/
void customArena() {}

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
  if (key == 'o') {toggles[ORDERED] = !toggles[ORDERED]; }
  if (key == 'r') {nodez.populate(5,toggles[ORDERED]); } 
  if (keyCode == '+') {nodez.OrbAdd(toggles[FRONT]);}
  if (keyCode == '-') {nodez.OrbRemove(toggles[FRONT]); }
  if (keyCode == '1') {toggles[FRONT] = !toggles[FRONT]; }
  
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

/* 
void mousePressed() {
  if(toggles[DRAGF] && mousePressed) {
    rect(mouseX, mouseY, random(100), random(100) );
  }
}//mousePressed
*/ //Scrapped
