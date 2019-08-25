class Path_2{
   String keyArr[] = {"DOWN","RIGHT","UP","LEFT"};
   ArrayList<String>path = new ArrayList<String>();
   ArrayList<PVector>pathCordinates = new ArrayList<PVector>();
   PVector headPos;
   PVector foodPos;
   PVector temp = new PVector();
   int pathLength;
   
   ArrayList<String> findPath(){
     path.clear();
     pathCordinates.clear();
     PVector headPos = snake.getPos();
     PVector foodPos = food.getfpos();
     int xDist = floor(foodPos.x - headPos.x)/20;
     int yDist = floor(foodPos.y - headPos.y)/20;
     
//     println(xDist,yDist);
     
     for(int i=0; i<abs(xDist); i++){
       if(xDist/abs(xDist) == 1){
         path.add("RIGHT");
         temp.set(((headPos.x)/20)+i,headPos.y/20);
         pathCordinates.add(temp);
       }
       else{
         path.add("LEFT");
         temp.set(((headPos.x)/20)-i,headPos.y/20);
         pathCordinates.add(temp);
       }
     }
     for(int i=0; i<abs(yDist); i++){
       if(yDist/abs(yDist) == 1){
         path.add("DOWN");
         temp.set((headPos.x)/20,((headPos.y)/20)+i);
         pathCordinates.add(temp);
       }
       else{
         temp.set((headPos.x)/20,((headPos.y)/20)-i);
         pathCordinates.add(temp);
         path.add("UP");
       }
     }
//     println(path);
     println(pathCordinates);
     return path;
   }
   
   boolean checkObstacle(){
     boolean val = false;     
     for(int i=0; i<this.path.size(); i++){
     }
   return val;
   }
}
