class Wave{
  float hue_color;
  float radius;
  PVector [] cirLoc = new PVector[num]; //はじめに並べてある玉の位置
  
  Wave(float COLOR, float RAD,float pos_z){
    
      for(int i=0; i<num; i++ ){
        cirLoc[i] = new PVector(width/num*(i+1), height/2, pos_z);
      }
      hue_color= COLOR;
      radius =RAD;
    
    
  }

  void move(){
    //update
        theta += thetaSpeed;
        
        for(int i=0; i<num; i++ ){
          hacho = map(hue_color, 0, 300, 90, 720);
          startTheta = map(cirLoc[i].x, width/5*0, width/5*1, 0, hacho);
          cirLoc[i].y = r * sin(radians(theta+ startTheta))+(height/2);
        }
        
        if(theta>= 360){
            theta=0;
        }
    
    //displey   
        noStroke();
        //始めに並べてある玉   
        fill(hue_color, alfaBigger/4,100,100); 
        for(int i =1; i<num; i++){    
            ellipse(cirLoc[i].x,cirLoc[i].y,radius,radius);
        }     
  } 
}
  
