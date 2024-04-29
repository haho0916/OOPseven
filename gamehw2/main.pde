wita newch;
void setup() {
  size(800, 600);
  
  // background (sky color) 
  fill(153,204,255);
  rect(-1,-1,801,601);
  
  // character init
  newch = new wita();
}

void draw(){
  newch.render();
}

void keyPressed(){ 
  
}
void mousePressed(){ 

}
