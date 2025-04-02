class OrbNode extends Orb {
  OrbNode next;
  OrbNode prev;
  
  
  OrbNode(float x, float y, float s, float m) {
    super(x, y, s, m);
  }//constructor
  OrbNode() { }//constructor
  
  void display() {
    super.display();
    if (next != null && toggles[SPRING]) {
      float dnext = this.center.dist(next.center);
      if (dnext < SPRING_LENGTH) { stroke(0, 255, 0); }
      else if (dnext > SPRING_LENGTH) { stroke(255, 0, 0); }
      else { stroke(0); }
      line(this.center.x, this.center.y+2, next.center.x, next.center.y+2);
    }//if

    if (prev != null && toggles[SPRING]) {
      float dprev = this.center.dist(prev.center);
      if (dprev < SPRING_LENGTH) { stroke(0, 255, 0); }
      else if (dprev > SPRING_LENGTH) { stroke(255, 0, 0); }
      else { stroke(0); }
      line(this.center.x, this.center.y-2, prev.center.x, prev.center.y-2);
    }//if
  }//drawSpring + displaying

  void applySprings(int springLength, float springK) {
    if (next != null) {
      PVector sforce = getSpring(next, springLength, springK);
      applyForce(sforce);
    }
    if (prev != null) {
      PVector sforce = getSpring(prev, springLength, springK);
      applyForce(sforce);
    }
  }///applySprings
  
  
  
  
  
  
}//class OrbNode
