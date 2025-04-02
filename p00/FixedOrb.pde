class FixedOrb extends Orb {
 
   FixedOrb(float x, float y, float s, float m) {
    super(x, y, s, m);
    c = color(0);
   }//constructor

  FixedOrb() {
    super();
    c = color(0);
  }//other constructor
  
  
  void move(boolean bounce) {} //override so the fixed orb doesnt move
}//class FixedOrb
