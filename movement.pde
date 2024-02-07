// グーの動き
void g_move(){
  // 第一関節の曲げ
  if (angle4 <= PI/2){
    rotateY(angle1);
    rotateX(angle2);
    r.left_arm();          
    translate(-arm_x, 0, 0);
    //xyzAxis(50);
    rotateY(angle3);
    translate(arm_x, 0, 0);
    r.hand();
    r.pin();
    translate(-arm_x-hand_x, 0, 0);
    //xyzAxis(200);
    rotateY(angle4);
    translate(arm_x+hand_x, 0, 0);
    r.fin1();
    r.fin2();
    r.fin3();
    r.fin4();
    r.fin5();
    r.fin6();
    angle4 += PI/90;
    delay(50);
  }else{
    //第二関節の曲げ
    if (angle5 <= PI/2){
      rotateY(angle1);
      rotateX(angle2);
      r.left_arm();          
      translate(-arm_x, 0, 0);
      //xyzAxis(50);
      rotateY(angle3);
      translate(arm_x, 0, 0);
      r.hand();     
      r.pin();
      translate(-arm_x-hand_x, 0, 0);
      //xyzAxis(200);
      rotateY(angle4);
      translate(arm_x+hand_x, 0, 0);
      r.fin1();
      r.fin2();
      translate(-arm_x-hand_x-fin_x, 0, 0);
      //xyzAxis(200);
      rotateY(angle5);
      translate(arm_x+hand_x+fin_x, 0, 0);
      r.fin3();
      r.fin4();
      r.fin5();
      r.fin6();
      angle5 += PI/90;
      delay(50);
    }else{
      //第3関節の曲げ
      if (angle6 <= PI/2){
        rotateY(angle1);
        rotateX(angle2);
        r.left_arm();          
        translate(-arm_x, 0, 0);
        //xyzAxis(50);
        rotateY(angle3);
        translate(arm_x, 0, 0);
        r.hand();   
        r.pin();
        translate(-arm_x-hand_x, 0, 0);
        //xyzAxis(200);
        rotateY(angle4);
        translate(arm_x+hand_x, 0, 0);
        r.fin1();
        r.fin2();
        translate(-arm_x-hand_x-fin_x, 0, 0);
        //xyzAxis(200);
        rotateY(angle5);
        translate(arm_x+hand_x+fin_x, 0, 0);
        r.fin3();
        r.fin4();
        translate(-arm_x-hand_x-2*fin_x, 0, 0);
        //xyzAxis(200);
        rotateY(angle6);
        translate(arm_x+hand_x+2*fin_x, 0, 0);
        r.fin5();
        r.fin6();
        angle6 += PI/90;
        delay(50);
      }else{
        // 親指の曲げ
        if (angle7 <= PI/2){   
          rotateY(angle1);
          rotateX(angle2);
          r.left_arm();          
          translate(-arm_x, 0, 0);
          //xyzAxis(50);
          rotateY(angle3);
          translate(arm_x, 0, 0);
          r.hand();    
          translate(-arm_x-hand_x, 0, 0);
          //xyzAxis(200);
          rotateY(angle4);
          translate(arm_x+hand_x, 0, 0);
          r.fin1();
          r.fin2();
          translate(-arm_x-hand_x-fin_x, 0, 0);
          //xyzAxis(200);
          rotateY(angle5);
          translate(arm_x+hand_x+fin_x, 0, 0);
          r.fin3();
          r.fin4();
          translate(-arm_x-hand_x-2*fin_x, 0, 0);
          //xyzAxis(200);
          rotateY(angle6);
          translate(arm_x+hand_x+2*fin_x, 0, 0);
          r.fin5();
          r.fin6();
          translate(-arm_x-hand_x-3*fin_x, -hand_y/2, fin_x-0.5*hand_x);
          //xyzAxis(200);
          rotateZ(angle7);
          translate(arm_x+2*fin_x, hand_y/2, 0);
          r.pin();
          angle7 += PI/90;
          delay(50);
        }else{
          rotateY(angle1);
          rotateX(angle2);
          r.left_arm();          
          translate(-arm_x, 0, 0);
          //xyzAxis(50);
          rotateY(angle3);
          translate(arm_x, 0, 0);
          r.hand();    
          translate(-arm_x-hand_x, 0, 0);
          //xyzAxis(200);
          rotateY(angle4);
          translate(arm_x+hand_x, 0, 0);
          r.fin1();
          r.fin2();
          translate(-arm_x-hand_x-fin_x, 0, 0);
          //xyzAxis(200);
          rotateY(angle5);
          translate(arm_x+hand_x+fin_x, 0, 0);
          r.fin3();
          r.fin4();
          translate(-arm_x-hand_x-2*fin_x, 0, 0);
          //xyzAxis(200);
          rotateY(angle6);
          translate(arm_x+hand_x+2*fin_x, 0, 0);
          r.fin5();
          r.fin6();
          translate(-arm_x-hand_x-3*fin_x, -hand_y/2, fin_x-0.5*hand_x);
          //xyzAxis(200);
          rotateZ(angle7);
          translate(arm_x+2*fin_x, hand_y/2, 0);
          r.pin();          
        }
      }              
    }
  }    
}

// チョキの動き
// グーの動き
void c_move(){
  // 第一関節の曲げ
  if (angle4 <= PI/2){
    rotateY(angle1);
    rotateX(angle2);
    r.left_arm();          
    translate(-arm_x, 0, 0);
    //xyzAxis(50);
    rotateY(angle3);
    translate(arm_x, 0, 0);
    r.hand();
    r.pin();
    r.fin1();
    r.fin3();
    r.fin5();
    translate(-arm_x-hand_x, 0, 0);
    //xyzAxis(200);
    rotateY(angle4);
    translate(arm_x+hand_x, 0, 0);
    r.fin2();    
    r.fin4();    
    r.fin6();    
    angle4 += PI/90;
    delay(50);
  }else{
    //第二関節の曲げ
    if (angle5 <= PI/2){
      rotateY(angle1);
      rotateX(angle2);
      r.left_arm();          
      translate(-arm_x, 0, 0);
      //xyzAxis(50);
      rotateY(angle3);
      translate(arm_x, 0, 0);
      r.hand();     
      r.pin();
      r.fin1();
      r.fin3();
      r.fin5();
      translate(-arm_x-hand_x, 0, 0);
      //xyzAxis(200);
      rotateY(angle4);
      translate(arm_x+hand_x, 0, 0);
      r.fin2();
      translate(-arm_x-hand_x-fin_x, 0, 0);
      //xyzAxis(200);
      rotateY(angle5);
      translate(arm_x+hand_x+fin_x, 0, 0);
      r.fin4();
      r.fin6();
      angle5 += PI/90;
      delay(50);
    }else{
      //第3関節の曲げ
      if (angle6 <= PI/2){
        rotateY(angle1);
        rotateX(angle2);
        r.left_arm();          
        translate(-arm_x, 0, 0);
        //xyzAxis(50);
        rotateY(angle3);
        translate(arm_x, 0, 0);
        r.hand();   
        r.pin();
        r.fin1();
        r.fin3();
        r.fin5();
        translate(-arm_x-hand_x, 0, 0);
        //xyzAxis(200);
        rotateY(angle4);
        translate(arm_x+hand_x, 0, 0);
        r.fin2();
        translate(-arm_x-hand_x-fin_x, 0, 0);
        //xyzAxis(200);
        rotateY(angle5);
        translate(arm_x+hand_x+fin_x, 0, 0);
        r.fin4();
        translate(-arm_x-hand_x-2*fin_x, 0, 0);
        //xyzAxis(200);
        rotateY(angle6);
        translate(arm_x+hand_x+2*fin_x, 0, 0);
        r.fin6();
        angle6 += PI/90;
        delay(50);
      }else{
        // 親指の曲げ
        if (angle7 <= PI/2){   
          rotateY(angle1);
          rotateX(angle2);
          r.left_arm();          
          translate(-arm_x, 0, 0);
          //xyzAxis(50);
          rotateY(angle3);
          translate(arm_x, 0, 0);
          r.hand();    
          r.fin1();
          r.fin3();
          r.fin5();
          translate(-arm_x-hand_x, 0, 0);
          //xyzAxis(200);
          rotateY(angle4);
          translate(arm_x+hand_x, 0, 0);
          r.fin2();
          translate(-arm_x-hand_x-fin_x, 0, 0);
          //xyzAxis(200);
          rotateY(angle5);
          translate(arm_x+hand_x+fin_x, 0, 0);
          r.fin4();
          translate(-arm_x-hand_x-2*fin_x, 0, 0);
          //xyzAxis(200);
          rotateY(angle6);
          translate(arm_x+hand_x+2*fin_x, 0, 0);
          r.fin6();
          translate(-arm_x-hand_x-3*fin_x, -hand_y/2, fin_x-0.5*hand_x);
          //xyzAxis(200);
          rotateZ(angle7);
          translate(arm_x+2*fin_x, hand_y/2, 0);
          r.pin();
          angle7 += PI/90;
          delay(50);
        }else{
          rotateY(angle1);
          rotateX(angle2);
          r.left_arm();          
          translate(-arm_x, 0, 0);
          //xyzAxis(50);
          rotateY(angle3);
          translate(arm_x, 0, 0);
          r.hand();    
          r.fin1();
          r.fin3();
          r.fin5();
          translate(-arm_x-hand_x, 0, 0);
          //xyzAxis(200);
          rotateY(angle4);
          translate(arm_x+hand_x, 0, 0);
          r.fin2();
          translate(-arm_x-hand_x-fin_x, 0, 0);
          //xyzAxis(200);
          rotateY(angle5);
          translate(arm_x+hand_x+fin_x, 0, 0);
          r.fin4();
          translate(-arm_x-hand_x-2*fin_x, 0, 0);
          //xyzAxis(200);
          rotateY(angle6);
          translate(arm_x+hand_x+2*fin_x, 0, 0);
          r.fin6();
          translate(-arm_x-hand_x-3*fin_x, -hand_y/2, fin_x-0.5*hand_x);
          //xyzAxis(200);
          rotateZ(angle7);
          translate(arm_x+2*fin_x, hand_y/2, 0);
          r.pin();          
        }
      }              
    }
  }    
}
