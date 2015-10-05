/* please implement your assign1 code in this file. */
PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;
int bg1x,bg2x;
int hpx;
int tx,ty;
int ex,ey;

void setup () {
  size(640,480) ;  // must use this size.
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png");
  enemy=loadImage("img/enemy.png");
  fighter=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  treasure=loadImage("img/treasure.png");
  
  bg1x=640;
  bg2x=0;
  
  hpx=floor(random(20,210));
  
  tx=floor(random(0,470));
  ty=floor(random(60,420));
  
  ex=0;
  ey=floor(random(50,420));
}

void draw() {
  //background
  image(bg1,bg1x-640,0);
  image(bg2,bg2x-640,0);
  bg1x++;
  bg2x++;
  bg1x%=1280;
  bg2x%=1280;


  
  //fighter
  image(fighter,550,240);
  
  //hp
  fill(255,0,0);
  noStroke();
  rect(11,13,hpx,20,10);
  image(hp,10,10);
  
  //treasure
  image(treasure,tx,ty);
  
  //enemy
  image(enemy,ex,ey);
  ex+=3;
  ex%=640;
  
  
}
