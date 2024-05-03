class wita {
  
    //////////////////
    // constructors //
    //////////////////
    wita() {
    x = width/2;
    y = height-50;
    length=20;
    }
  
    ///////////////
    // variables //
    ///////////////
    float x, y, length;
    
    ///////////////
    // functions //
    ///////////////
    void render(){
        // outer face
        fill(255,128,0);
        stroke(255,128,0);
        circle(x,y,2*length+10);
        
        // inner face
        fill(255,255,0);
        stroke(255,0,0);
        circle(x,y,2*length);
        
        //eyes
        stroke(0,0,0);
        for(int i = 0; i < 180; i++){
            fill(0,0,0);
            circle(cos(i*3.14/180)*7+(x-10),-1 * sin(i*3.14/180)*5+(y-5),3); 
        }
        for(int i = 0; i < 180; i++){
            fill(0,0,0);
            circle(cos(i*3.14/180)*7+(x+10),-1 * sin(i*3.14/180)*5+(y-5),3);
        } 
        
        //lip
        for(int i = 0; i < 180; i++){
            fill(0,0,0);
            circle(cos(i*3.14/180)*12+x,sin(i*3.14/180)*5+(y+5),5);
        }
   
         //sunleaf_line
        int count = 36;
        for (int i = 0; i <count; i++){
            stroke(255,128,0);
            line(x+cos(i*3.14/count*2)*length,y+sin(i*3.14/count*2)*length,x+cos((i-0.5)*3.14/count*2)*(length+10),y+sin((i-0.5)*3.14/count*2)*(length+10));
            stroke(255,128,0);
            line(x+cos(i*3.14/count*2)*length,y+sin(i*3.14/count*2)*length,x+cos((i+0.5)*3.14/count*2)*(length+10),y+sin((i+0.5)*3.14/count*2)*(length+10));
         }
   
        //sunleaf_color
         for (int i = 0; i <count; i++)
             for(int j = 0; j < 100; j++){
                 stroke(153,204,255);
                 line(x+cos(i*3.14/count*2)*length,y+sin(i*3.14/count*2)*length,x+cos((i-0.5+(j*0.01))*3.14/count*2)*(length+10),y+sin((i-0.5+(j*0.01))*3.14/count*2)*(length+10));
             }
     }
  
     // key 입력 받아서 위치 조정
     void move(float dx, float dy) {
         float newX = x + dx;
    
         // 새로운 위치가 화면 경계를 넘어가지 않도록 처리
         if (newX >= length && newX <= width - length) {
          x = newX;
     }
  }
}
