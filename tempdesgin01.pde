import java.util.Random;
Random generator;

int deterColor;
float num, sd, gauX, x, y, angle, len;
float temp = 50;
int flowerNum = floor(temp * 10);
float[] xList = new float[flowerNum];
float[] yList = new float[flowerNum];
float[] angleList = new float[flowerNum];
int[] deterColorList = new int[flowerNum];
float[] lenList = new float[flowerNum];



void setup(){
  size(800, 800);
  background(137, 219, 139);
  
  Table fileName = loadTable("temp_hmdt.csv");
  int dataRow = fileName.getRowCount() -1;
  //int dataColum = fileName.getColumnCount() ;
  temp = fileName.getFloat(dataRow, 1);
  flowerNum = floor(temp * 10);
  print(flowerNum);
  generator = new Random();
  frameRate(1);
  
  makeflower();   
  }
  
void draw(){
   background(137, 219, 139);
  for(int i=0; i<flowerNum; i++){ 
    flower(xList[i], yList[i], angleList[i], deterColorList[i], lenList[i]);
    if(lenList[i] < 5){
      angleList[i] += 0.7/5;
    }else{
      angleList[i] -= 0.7/5;
    }
  }
}  
