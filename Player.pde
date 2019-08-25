class Player {
  private ArrayList<PVector>pos = new ArrayList<PVector>();  
  private PVector dir;
  private int speed;
  private int size; 

  public Player() {
    this.dir = new PVector();
    this.pos.add(new PVector(0, 0)); 
    this.dir.set(1, 0);
    this.speed = 20;
    this.size = 20;
  }
  // Getters and setters
  void setDir(int x, int y) {
    this.dir.x = x;
    this.dir.y = y;
  }
  PVector getPos(){
    return pos.get(0);
  }
  // Imp functions
  void display() {
    for (int i=0; i<pos.size(); i++) {
      fill((255/pos.size())*i);
      rect(this.pos.get(i).x, this.pos.get(i).y, this.size, this.size);
    }
  } 
  boolean move() {
    for (int i=this.pos.size()-1; i>0; i--) {
      this.pos.get(i).x = this.pos.get(i-1).x;
      this.pos.get(i).y = this.pos.get(i-1).y;
    }
    this.pos.get(0).x = this.pos.get(0).x + (this.speed*this.dir.x); 
    this.pos.get(0).y = this.pos.get(0).y + (this.speed*this.dir.y); 
    if(this.pos.get(0).x > 700 || this.pos.get(0).x < 0|| this.pos.get(0).y > 599 || this.pos.get(0).y <0) //If snake out of boundary return true
       return true;
    for(int i=3; i<=this.pos.size()-1; i++){
      if(this.pos.get(0).x == this.pos.get(i).x && this.pos.get(0).y == this.pos.get(i).y){//If snake eats itself
        println("error");        
        return true;    
      }
    }
    return false;
  }
  void addLength() {
    this.pos.add(new PVector());
  }
  boolean isEaten(PVector fPos) {
    if (this.pos.get(0).x == fPos.x && this.pos.get(0).y == fPos.y) {
      this.addLength();
      return true;
    }
    return false;
  }
  void restart(){
    this.pos.clear();
    this.dir.set(1, 0);
    this.pos.add(new PVector(0, 0)); 
  }
}
