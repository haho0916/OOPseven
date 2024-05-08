//////////////////////
// global variables //
//////////////////////
wita newch;
hb habin;
obs [] obstacles;
int gamefinish;
// init
void setup() {
    // background (sky color) 
    size(800, 600);
    fill(153,204,255);
    rect(-1,-1,801,601);
  
    // character init
    newch = new wita();
    habin = new hb();
    
    // obstacle init
    obstacles = new obs[10];
    for (int i = 0; i < 10; i++) 
        obstacles[i] = new obs((int)random(1,800),(int)random(-600,0));
        
    // system variable
    gamefinish = 0;
}

// update & render
void draw(){
    ////////////
    // render //
    ////////////
    background(153,204,255);
    newch.render();
    habin.render();
    for(int i = 0; i < 10; i++)
        obstacles[i].render();
    
    ////////////
    // update //
    ////////////
    
    // obstacles fall
    for(int i = 0; i < 10; i++)
        if(gamefinish < 2) obstacles[i].move();
        
    // check if they crash
    for(int i = 0; i < 10; i++){
        if( (obstacles[i].x >= newch.x && obstacles[i].x+10 <= newch.x + newch.size*2+10) && (obstacles[i].y >= newch.y && obstacles[i].y+10 <= newch.y + newch.size*2+10)){
            newch.x = -999;
            newch.y = 999;
            gamefinish ++;
        }
        if( (obstacles[i].x >= habin.x && obstacles[i].x+10 <= habin.x+habin.size) && (obstacles[i].y >= habin.y && obstacles[i].y+10 <= habin.y+habin.size*1.5) ){
            habin.x = -999;
            habin.y = 999;
            gamefinish ++;
        }
    }
}

void keyPressed(){ 
    if(key == 'd') habin.move(20,0);    // wd 움직임
    else if(key == 'a') habin.move(-20,0);
    
    if(key == 'l') newch.move(20,0);    // jl 움직임
    else if(key == 'j') newch.move(-20,0);
} 
