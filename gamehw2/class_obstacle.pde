class obs {

    //////////////////
    // constructors //
    //////////////////
    obs() {}
    obs(int random_x, int random_y) {
        x = random_x;
        y = random_y;
    }
  
    ///////////////
    // variables //
    ///////////////
    int x, y;
    
    ///////////////
    // functions //
    ///////////////
    void render(){
        fill(80,80,80);
        stroke(255,0,0);
        rect(x,y,10,10);
    }
  
    void move(){
        y+=5;
        if(y > height){
            y = 0;
            x = (int)random(0,800);
        }
    }   
}
