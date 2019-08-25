class SBFS{
   String keyArr[] = {"DOWN","RIGHT","UP","LEFT"};
   ArrayList<String>path = new ArrayList<String>();
   PVector headPos;
   PVector foodPos;
   int pathLength;
   
   ArrayList<String> findPath(){
     path.clear();
     PVector headPos = snake.getPos();
     PVector foodPos = food.getfpos();
     int xDist = floor(foodPos.x - headPos.x)/20;
     int yDist = floor(foodPos.y - headPos.y)/20;
     
     println(xDist,yDist);
     
     for(int i=0; i<abs(xDist); i++){
       if(xDist/abs(xDist) == 1)
         path.add("RIGHT");
       else
         path.add("LEFT");
     }
     for(int i=0; i<abs(yDist); i++){
       if(yDist/abs(yDist) == 1)
         path.add("DOWN");
       else
         path.add("UP");
     }
//     println(path);
     return path;
   }
   
   void avoidObstacle(){}
}
