class hb
{
  
hb() {x = 200; y = 200; size = 100;} // constructor 1
hb(float s) {x = 200; y = 200; size = s;}  // constructor 2
hb(float l_x, float l_y, float s) { x = l_x; y = l_y; size = s;} // constructor 3 
  
  
float x, y, size; // member data
  
  // member function
  
 void display() {
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
  
  // key 입력받아서 위치 조정
      void move(float dx, float dy) {
    x += dx;
    y += dy;
    
        //화면밖으로 나가지 않게 코드 작성
    if(x > width)
    { 
      x = 0;
    }
    
    if(y > height)
    {
      y = 0;
    }
  }
}

  
  





  



 
 
