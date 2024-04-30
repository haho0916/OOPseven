wita newch;
hb habin;
void setup() {
  size(800, 600);
  
  // background (sky color) 
  fill(153,204,255);
  rect(-1,-1,801,601);
  
  // character init
  newch = new wita();
  habin = new hb();
  
}

void draw(){
  background(153,204,255);
  newch.render();
  habin.display();
}

void keyPressed(){ 
  if(key == 'd') habin.move(20,0);    // wasd 움직임
  else if(key == 'a') habin.move(-20,0);
  else if(key == 'w') habin.move(0,-20);
  else if(key == 's') habin.move(0,20);
  
  if(key == 'l') newch.move(20,0);    // ijkl 움직임
  else if(key == 'j') newch.move(-20,0);
  else if(key == 'i') newch.move(0,-20);
  else if(key == 'k') newch.move(0,20);
  
  
} 
  
  

void mousePressed(){ 

}
