float head = 100;// 頭の大きさ
float body_x = 250;// 胴体の大きさ
float body_y = 300;
float body_z = 150;
float arm_x = 250;// 腕の大きさ
float arm_y = 100;
float arm_z = 100;
float leg_x = 120;// 足の大きさ
float leg_y = 200;
float leg_z = 120;
float hand_x =120;// 手の大きさ
float hand_y =120;
float hand_z =25;
float fin_x =30;// 親指、人差し指、中指、薬指、小指の1関節の大きさ
float fin_y =20;
float fin_z =20;

class robot{
  
  void head(){  
    //頭
    pushMatrix();
    noStroke();
    fill(#058FF5);
    sphere(head);
    fill(255, 0, 0);
    translate(0,0,50);
    box(20, 20, 100);
    popMatrix();
  }
  
  void body(){  
    //胴体
    pushMatrix();
    translate(0,head + 0.5*body_y,0);
    stroke(0);
    fill(#058FF5);
    box(body_x, body_y, body_z);
    popMatrix();
  }
  
  void left_arm(){
    //左腕
    pushMatrix();
    translate(-0.5*arm_x, 0, 0);
    fill(#058FF5);
    box(arm_x, arm_y, arm_z);
    popMatrix();
  }
  
  void right_arm(){  
    //右腕
    pushMatrix();
    fill(#058FF5);
    translate(0.5*body_x + 0.5*arm_x, head + 0.2*body_x, 0);
    box(arm_x, arm_y, arm_z);
    popMatrix();
  }
  
  void left_leg(){  
    //左足
    pushMatrix();
    fill(#058FF5);
    translate(-0.25*body_x, head + body_y + leg_y/2, 0);
    box(leg_x, leg_y, leg_z);
    popMatrix();
  }
  
  void right_leg(){
    //右足
    pushMatrix();
    fill(#058FF5);
    translate(0.25*body_x, head + body_y + leg_y/2, 0);
    box(leg_x, leg_y, leg_z);
    popMatrix();
  }
  
  void hand(){
    // 手
    pushMatrix();
    fill(#058FF5);
    translate(-1*arm_x-0.5*hand_x, 0, 0);
    box(hand_x, hand_y, hand_z);
    popMatrix();
  }
  
  void fin1(){
    // 人差し指、中指の① 
    for (int j=0; j<hand_y/2; j+=hand_y/4){
      pushMatrix();
      fill(#058FF5);
      translate(-1*arm_x-hand_x-0.5*fin_x, hand_y/3 - hand_y/2 - j, 0);
      box(fin_x, fin_y, fin_z);
      popMatrix();
    }
  }
  
  void fin2(){
    // 薬指、小指の① 
    for (int j=0; j<hand_y/2; j+=hand_y/4){
      pushMatrix();
      fill(#058FF5);
      translate(-1*arm_x-hand_x-0.5*fin_x, hand_y/3 - j, 0);
      box(fin_x, fin_y, fin_z);
      popMatrix();
    }
  }  
    
  void fin3(){
    // 人差し指、中指の②
    for (int j=0; j<hand_y/2; j+=hand_y/4){
      pushMatrix();
      fill(#058FF5);
      translate(-1*arm_x-hand_x-1.5*fin_x, hand_y/3 - hand_y/2 - j, 0);
      box(fin_x, fin_y, fin_z);
      popMatrix();
    }    
  }
  
  void fin4(){
    // 薬指、小指の②
    for (int j=0; j<hand_y/2; j+=hand_y/4){
      pushMatrix();
      fill(#058FF5);
      translate(-1*arm_x-hand_x-1.5*fin_x, hand_y/3 - j, 0);
      box(fin_x, fin_y, fin_z);
      popMatrix();
    }    
  }
  
  void fin5(){
    // 人差し指、中指の③ 
    for (int j=0; j<hand_y/2; j+=hand_y/4){
      pushMatrix();
      fill(#058FF5);
      translate(-1*arm_x-hand_x-2.5*fin_x, hand_y/3 - hand_y/2 - j, 0);
      box(fin_x, fin_y, fin_z);
      popMatrix();
    }    
  }  
  
  void fin6(){
    // 薬指、小指の③ 
    for (int j=0; j<hand_y/2; j+=hand_y/4){
      pushMatrix();
      fill(#058FF5);
      translate(-1*arm_x-hand_x-2.5*fin_x, hand_y/3 - j, 0);
      box(fin_x, fin_y, fin_z);
      popMatrix();
    }    
  }
  
  void pin(){
    // 親指
    pushMatrix();
    fill(#058FF5);
    translate(-1*arm_x-0.5*hand_x, -0.5*hand_y-0.5*fin_x, 0);
    box(fin_y, fin_x, fin_z);
    translate(0, -fin_x, 0);
    box(fin_y, fin_x, fin_z);
    popMatrix();
  }
  
}
