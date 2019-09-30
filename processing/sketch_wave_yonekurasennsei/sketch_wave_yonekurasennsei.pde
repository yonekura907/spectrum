
  Buwawa buwawa;
   
  int num =400 ;//玉の個数
  float theta;
  float startTheta;
  float thetaSpeed;
  float r;
  float hacho;
      
  int scene;
  int sceneTime;
  float alfaSmaller;
  float alfaBigger;
  

void setup(){

  background(0);
  size(900,600,P3D);
  colorMode(HSB,360,100,100,100);
  
  buwawa =new Buwawa();
  
  theta =0;
  startTheta=0;
  thetaSpeed = 0.2;
  r = 80; 
  
  scene =0;
  sceneTime =0;
   
}

void draw(){
  background(0);
     
      camera(width/2, height/2-200, 300.0, // 視点X, 視点Y, 視点Z
             width/2, height/2, 0.0, // 中心点X, 中心点Y, 中心点Z
             0, height, 0.0); // 天地X, 天地Y, 天地Z
  
  colorMode(HSB,360,100,100,100);
  blendMode(ADD);
  if(scene==0){    
    buwawa.buwaing();
  }
  
  //saveFrame("frames/####.tif");

} 



  
