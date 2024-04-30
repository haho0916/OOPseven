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
  newch.render();
  habin.display();
}

void keyPressed(){ 
  
}
void mousePressed(){ 

}
