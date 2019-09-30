class Twist {
  ArrayList <Wave> waves ;  
  float grade;
  float rad_grade;
  //boolean flag;

  Twist(float GRADE, float RAD) {
    waves = new ArrayList <Wave>();
    grade = GRADE;
    rad_grade = RAD;
  }

  void twisting() {   
    for(int i=0; i< grade; i++){      
      float hue_grade = (280/grade)*i;
      waves.add(new Wave(hue_grade, rad_grade, 140*5));
      Wave wave = waves.get(i);
      wave.move();    
    }
  }  
}
