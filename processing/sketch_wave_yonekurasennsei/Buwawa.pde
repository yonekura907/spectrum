class Buwawa{
  ArrayList <Twist> twists ; 
  float gradeOrigin;
  int timeCount;
  float Radius;

  Buwawa() {
    twists = new ArrayList <Twist>();
    gradeOrigin =40;
    Radius =20;
    //Radius=4;
    timeCount =0;
  }

  void buwaing() { 
      sceneTime+=1;      
      alfaBigger = map(sceneTime,0,240,50,100);
      gradeOrigin-=0.06;
      Radius-=0.1;
      
      if(gradeOrigin>=20){
        twists.add(new Twist(gradeOrigin , Radius));          
        Twist twist = twists.get(sceneTime-1);
        twist.twisting();
      }
      if(gradeOrigin<=20){
          gradeOrigin =20;
          timeCount+=1;
          alfaBigger = map(timeCount,0,560,100,50);
          Twist twist = twists.get(332 -timeCount);
          twist.twisting();
          if(timeCount==332){
            sceneTime=0;
            timeCount-=1;
            noLoop();
                 
          }
      }  
      if(Radius<=4){
        Radius =4;
      }
  }
}
