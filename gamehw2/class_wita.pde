class wita {
  float x, y, length;
  wita() {
    x = width/2;
    y = height/2;
    length=50;
  }
  
  void render()
  {
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
     circle(cos(i*3.14/180)*7+(x-20),-1 * sin(i*3.14/180)*5+(y-10),10); 
    }
    for(int i = 0; i < 180; i++){
     fill(0,0,0);
     circle(cos(i*3.14/180)*7+(x+20),-1 * sin(i*3.14/180)*5+(y-10),10); 
    } 
    
    //lip
    for(int i = 0; i < 180; i++){
      fill(0,0,0);
      circle(cos(i*3.14/180)*12+x,sin(i*3.14/180)*5+(y+15),10); 
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
}
