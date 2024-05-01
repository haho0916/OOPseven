wita newch;
hb habin;
obs [] obstacles;
void setup() {
  size(800, 600);
  
  // background (sky color) 
  fill(153,204,255);
  rect(-1,-1,801,601);
  
  // character init
  newch = new wita();
  habin = new hb();
  
  // obstacle init
  obstacles = new obs[10];
  for (int i = 0; i < 10; i++) 
  obstacles[i] = new obs((int)random(1,800),(int)random(-600,0));
  
}

void draw(){
  
  // render objects
  background(153,204,255);
  newch.render();
  habin.display();
  for(int i = 0; i < 10; i++)
  obstacles[i].render();
  
  // update
  for(int i = 0; i < 10; i++)
  obstacles[i].move();
}

void keyPressed(){ 
  if(key == 'd') habin.move(20,0);    // wd 움직임
  else if(key == 'a') habin.move(-20,0);

  
  if(key == 'l') newch.move(20,0);    // jl 움직임
  else if(key == 'j') newch.move(-20,0);
} 
 
void mousePressed(){ 

}
