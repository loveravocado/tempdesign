void makeflower(){

    for(int j=0; j<flowerNum; j++){
    num = (float)generator.nextGaussian();
    sd = 3;
    gauX = sd * num + temp;
    deterColor = floor((gauX /5) + 1);
    if(deterColor > 8){
      deterColor = 8;
    }
    x = 0;
    y = 0;
    
    while(dist(x, y, width/2, height/2) > 370){
      x = random(50, width-50);
      y = random(50, height-50);
      
    }
    len = random(3, 8);
    angle = random(0, 1);
    
    xList[j] = x;
    yList[j] = y;
    angleList[j] = angle;
    deterColorList[j] = deterColor;
    lenList[j] = len;
    
    flower(x, y, angle, deterColor, len);
  }
    
}
