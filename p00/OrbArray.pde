class OrbArray {
  OrbNode front;
  
  OrbArray() {
    front = null;
  }//constructor
  
  void addFront(OrbNode o) {
    front.prev = front;
    front = o;   //new head
  }//addFront
  
  void populate(int n, boolean ordered) {
    if (ordered != true) {
      front = new OrbNode();//create orbNode
      for (int i = 0; i <= n - 1; i++) {
        front.prev = new OrbNode();//create orbNode
        (front.prev).next = front;
        front = front.prev;
      }//add orbs
    }//not ordered
    
    else {
      float y = height/2;
      float x = 100;
      front = new OrbNode();
      front.center = new PVector(x,y);
      x += SPRING_LENGTH;
      for (int i = 0; i <= n - 1; i++) {
        front.prev = new OrbNode();//create orbNode
        front.prev.center = new PVector(x,y);
        (front.prev).next = front;
        front = front.prev;
        x += SPRING_LENGTH;
      }//add orbs
    }//ordered true
  }//populate
  
  void display() {
  
OrbNode current = front;
    while (current != null)
    { current.display();
     if (toggles[MOVING]) {
      current.move(toggles[BOUNCE]);
      current.applyForce(gravitydown); }
      current = current.next; 
    }
  }//display

void applyGravity(Orb other, float gConstant) {
    OrbNode current = front;
    while ( current != null) {
      current.applyForce(current.getGravity(other, gConstant) );
      current = current.next;
    }//while
  }//orbital motion not to be confused with 9 m/s^2

void applySprings(int springLength, float springK) {
    OrbNode current = front;
    while (current != null) {
    current.applySprings(springLength, springK);
    current = current.next;
    }//while
  }//applySprings

void applyDrag(float coefd) {
    OrbNode current = front;
    while (current != null) {
    current.getDragForce(coefd);
    current = current.next;
    }//while
}//applyDrag

/* OrbAdd
add a orbnode to front or end of the linked list/orbarray
*/
void OrbAdd(boolean frontadd) { 
  if (frontadd) {
  front = front.prev;
  front = new OrbNode(); }
  
  else {
    
  }//else
}//OrbAdd


/* OrbRemove
Remove a orbnode at front or end of the linked list/orbarray
*/
void OrbRemove(boolean frontremove) {
  
}//OrbRemove


}//OrbArray
