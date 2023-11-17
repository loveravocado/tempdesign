void flower(float x, float y, float angle, int deterColor, float len){
 
  float num = 5;
  float z = TAU/num;
  int[][] tempColor = new int[][]{{0, 32, 128},{0, 65, 255}, {0, 150, 255}, {185,235, 255}, 
{255, 255, 240}, {255, 255, 150}, {250, 245, 0},{255, 153, 0},{255, 40, 0}};

  push();
  translate(x,y);
  rotate(angle);
  
  
   
  fill(tempColor[deterColor][0], tempColor[deterColor][1], tempColor[deterColor][2]);
  stroke(8, 51, 9);
  strokeWeight(1);

   
  for(int i=0; i<TAU; i += z){
    float theta = z * 0.5;
    float px1 = len * cos(theta);
    float py1 = len * sin(theta);
    float px2 = len * cos(-theta);
    float py2 = len * sin(-theta);
    
    float ex = 10;
    rotate(z);
    

    beginShape();
    vertex(0,0);
    vertex(px1, py1);
    bezierVertex(px1*ex, py1*ex, px2*ex, py2*ex, px2, py2);
    vertex(0,0);
    endShape();
  }
  pop();
}
