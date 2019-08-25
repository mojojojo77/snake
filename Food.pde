class Food {
  private PVector fPos;
  private int size;

  Food() {
    this.fPos = new PVector();
    this.size = 20;
    this.fPos.set((floor((random(701)))), floor((random(601))));
    this.fPos.set(this.fPos.x - this.fPos.x%20, this.fPos.y - this.fPos.y%20);
  }
  public void displayFood() {
    fill(#554F9D);
    rect(this.fPos.x, this.fPos.y, this.size, this.size);
    fill(255);
  }
  public PVector getfpos(){
    return fPos;
  } 
  public void newPos(){
    this.fPos.x = floor(random(701));
    this.fPos.y = floor(random(601));
    this.fPos.set(this.fPos.x - this.fPos.x%20, this.fPos.y - this.fPos.y%20);
  }
}
