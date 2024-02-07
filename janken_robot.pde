robot r; //robotクラス

float anglex = 0; //　視点移動x方向
float angley = 0; // 視点移動y方向
float angle1 = 0; // 左肩の角度
float angle2 = 0; // 左腕の角度
float angle3 = 0; // 手首の角度
float angle4 = 0; //
float angle5 = 0; //
float angle6 = 0; //
float angle7 = 0; //
int i = 0;// スタートが押されたかどうか判断するための変数
int x = 0;// グーチョキパーを決める変数


void setup(){
  
  size(1200, 800, P3D);
  r = new robot();
  stroke(0);

}

void draw(){
  
  background(255);
  translate(0.5*width, 0.25*height, 0);//初期座標
  rotateX(anglex); // マウスドラッグで画面回転
  rotateY(angley);
  
  r.head();//ロボットの表示
  r.body();
  r.right_arm();
  r.left_leg();
  r.right_leg();
  
  translate(-0.5*body_x, head + 0.2*body_y, 0);//左腕回転座標に移動
  
  if(keyPressed){
    
    //全リセット(正常でなくなった場合に使用)
    if(key == 'q'){
      anglex = 0;
      angley = 0;
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
      angle4 = 0;
      angle5 = 0;
      angle6 = 0;
      angle7 = 0;
      i = 0;
      
    }
  
    //じゃんけん"s"で開始
    if (key == 's'){
      i = 1;
      x = (int)random(3); // 0:グー, 1:チョキ, 2:パー
    }
  }

  // sが押されていない
  if (i != 1){
    r.left_arm();
    r.hand();
    r.fin1();
    r.fin2();
    r.fin3();
    r.fin4();
    r.fin5();
    r.fin6();
    r.pin();
    
  // sが押された
  }else{
    // 腕を前に持ってくる
    if (angle1 <= PI/2){      
      rotateY(angle1);
      r.left_arm();
      r.hand();
      r.fin1();
      r.fin2();
      r.fin3();
      r.fin4();
      r.fin5();
      r.fin6();
      r.pin();
      angle1 += PI/90;
      delay(50);
    }else{
      // 腕を回転する
      if (angle2 >= -PI/2){
        rotateY(angle1);
        rotateX(angle2);
        r.left_arm();
        r.hand();
        r.fin1();
        r.fin2();
        r.fin3();
        r.fin4();
        r.fin5();
        r.fin6();
        r.pin();
        angle2 -= PI/90;
        delay(50);
      }else{
        // 手首を手が見やすいように回転する
        if (angle3 >= -PI/2){
          rotateY(angle1);
          rotateX(angle2);
          r.left_arm();
          translate(-arm_x, 0, 0);
          //xyzAxis(50);
          rotateY(angle3);
          translate(arm_x, 0, 0);
          r.hand();
          r.fin1();
          r.fin2();
          r.fin3();
          r.fin4();
          r.fin5();
          r.fin6();
          r.pin();
          angle3 -= PI/90;
          delay(50);
        }else{ 
          if (x == 0){
            g_move();
          }else{
            if (x == 1){
              c_move();
            }else{
              if (x == 2){
                rotateY(angle1);
                rotateX(angle2);
                r.left_arm();
                translate(-arm_x, 0, 0);
                //xyzAxis(50);
                rotateY(angle3);
                translate(arm_x, 0, 0);
                r.hand();
                r.fin1();
                r.fin2();
                r.fin3();
                r.fin4();
                r.fin5();
                r.fin6();
                r.pin();
              }
            }
          }
        }
      }
    }
  }  
}

void mouseDragged() {
  anglex += (pmouseY - mouseY) * 0.01; 
  angley += (mouseX - pmouseX) * 0.01;
}
