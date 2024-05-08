class character {
    //////////////////
    // constructors //
    //////////////////
    character() {
      x=random(200,700);
      y = height-50;
      size=40;
    }
    
    character(float x_input, float y_input, float size_input) { x = x_input; y = y_input; size = size_input;} 

    ///////////////
    // variables //
    ///////////////
    float x, y, size;
    
    ///////////////
    // functions //
    ///////////////
    
    // key 입력 받아서 위치 조정 함수
    void move(float dx, float dy) {
        x += dx;
        y += dy;
        
        //화면 밖으로 나가지 않게 하는 기능
        if (x > width - size / 2)
        x = width - size / 2;
        else if (x < size / 2)
        x = size / 2;    
    }
}

class hb extends character{
  
    //////////////////
    // constructors //
    //////////////////
    hb() {
      super();
    }
    hb(float x_input, float y_input, float size_input) { 
    super(x_input,y_input,size_input);
    }
  
    ///////////////
    // functions //
    ///////////////
    // render
    void render() {
        // 캐릭터 몸통
        fill(0, 0, 255); 
        ellipse(x, y, size, size * 1.5);
    
        // 캐릭터 머리
        fill(255, 255, 0);
        ellipse(x, y - size * 0.7, size * 0.8, size * 0.8);
    
        // 캐릭터 눈
        fill(0); 
        ellipse(x - size * 0.2, y - size * 0.7, size * 0.2, size * 0.2);
        ellipse(x + size * 0.2, y - size * 0.7, size * 0.2, size * 0.2);
    }
}

class wita extends character{
  
    //////////////////
    // constructors //
    //////////////////
    wita() {
      super();
      size/=2;
    }
    wita(float x_input, float y_input, float size_input) { 
        super(x_input,y_input,size_input);
    }
  
    ///////////////
    // functions //
    ///////////////
    void render(){
        // outer face
        fill(255,128,0);
        stroke(255,128,0);
        circle(x,y,2*size+10);
        
        // inner face
        fill(255,255,0);
        stroke(255,0,0);
        circle(x,y,2*size);
        
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
            line(x+cos(i*3.14/count*2)*size,y+sin(i*3.14/count*2)*size,x+cos((i-0.5)*3.14/count*2)*(size+10),y+sin((i-0.5)*3.14/count*2)*(size+10));
            stroke(255,128,0);
            line(x+cos(i*3.14/count*2)*size,y+sin(i*3.14/count*2)*size,x+cos((i+0.5)*3.14/count*2)*(size+10),y+sin((i+0.5)*3.14/count*2)*(size+10));
         }
   
        //sunleaf_color
        for (int i = 0; i <count; i++)
            for(int j = 0; j < 100; j++){
                stroke(153,204,255);
                line(x+cos(i*3.14/count*2)*size,y+sin(i*3.14/count*2)*size,x+cos((i-0.5+(j*0.01))*3.14/count*2)*(size+10),y+sin((i-0.5+(j*0.01))*3.14/count*2)*(size+10));
            }
     }
}
