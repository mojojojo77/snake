Player snake;
Food food;
SBFS dumbestAI = new SBFS();
Path_2 dumbAI = new Path_2();
int i = 0;
ArrayList<String>path = new ArrayList();

void setup() {
  size(700, 600);
  background(#CB7F7F);
  food = new Food();
  snake = new Player();
  frameRate(10);
}

void draw() {
  background(#CB7F7F);
// Find the path between and head and food and follow it.
/*
  if(path.isEmpty())
    path.addAll(dumbestAI.findPath());
  keyPressed(path.get(0));
  path.remove(0);  
*/
// Find the path between head and food and check if it 
// collides with itself in the process, if not then follow it. Otherwise, find another path. 
  
  if(path.isEmpty())
    path.addAll(dumbAI.findPath());
  keyPressed(path.get(0));
  path.remove(0);  

  
  if(snake.move())
    snake.restart();
  food.displayFood();
  snake.display();
  if(snake.isEaten(food.getfpos()))
    food.newPos();
}

void keyPressed(String key) {
  if(((snake.dir.y == 1) && (keyCode == UP))||((snake.dir.y == -1) && (keyCode == DOWN)) || ((snake.dir.x == -1) && (keyCode == RIGHT)) || ((snake.dir.x == 1) && (keyCode == LEFT))){
  println("no error");
  }
  else{
    if(key == "UP" || keyCode == UP) 
      snake.setDir(0, -1);
    else if (key == "DOWN" || keyCode == DOWN) 
      snake.setDir(0, 1);
    else if (key == "LEFT" || keyCode == LEFT) 
      snake.setDir(-1, 0);
    else if (key == "RIGHT" || keyCode == RIGHT) 
      snake.setDir(1, 0);
  }
}
