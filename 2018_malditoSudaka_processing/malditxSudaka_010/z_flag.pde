class Flag extends Abyss{
  float padding;
  float cell;
  int cols, rows;
  PImage[] flags, aHardPlace;
  PImage   map, lyrics;
  //boolean doRandomCell, doCoin, doWaveform;
  int whichWiew = 0;
  color[] wcolors;
  //String  lyrics;
  
  Flag(){
    doCalcs(8,32/1);
    padding = 0.6;//1.0;//0.9;
    doLyrics();
    doFlags();
    doMap();
    doAhardPlace();
    doWipala();
  }
  void doWipala(){
    wcolors = new color[7];
    colorMode(RGB);
    wcolors[0] = color(255, 255, 255);
    wcolors[1] = color(255, 255, 0);
    wcolors[2] = color(255, 128, 0);
    wcolors[3] = color(255, 0, 0);
    wcolors[4] = color(255, 0, 255);
    wcolors[5] = color(0, 0, 255);
    wcolors[6] = color(0, 255, 0);
  }
  void draw(PGraphics pg) {
    
    if(doRandomCell)
      doCalcs(8,32);//int(random(4,128)));
    
    
    
    if(!doCoin){
      switch(wView){
        case 0:
        drawFlag(pg);
        break;
        case 1:
        drawMap(pg);
        break;
        case 2:
        drawAHardPlace(pg);
        break;
        case 3:
        drawLyrics(pg);
        break;
        case 4:
        drawWipala(pg);
        break;
      }
    }else{
      float coin = random(100);
      if(coin>80)
        drawFlag(pg);
      else if(coin>60)
        drawMap(pg);
      else if(coin>40)
        drawAHardPlace(pg);
      else if(coin>20)
        drawLyrics(pg);
       else
        drawWipala(pg);
      }
  }
  void doCalcs(float i, float j){
    cell = random(i,j);
    cols = buffer.width/int(cell);
    rows = buffer.height/int(cell);
  }
  void doLyrics(){
    /*String lines[] = loadStrings("../_data/malditxSudaka.txt");
    for (int i = 0 ; i < lines.length; i++) lyrics+=lines[i]+"\n";
    println(lyrics);*/
    lyrics = loadImage("../_data/malditxSudaka.png");
  }
  void doAhardPlace(){
    aHardPlace = new PImage[5];
    for(int i=0; i<aHardPlace.length; i++){
      aHardPlace[i] = loadImage("../_data/ahardplace/gflag/"+nf(i,3)+".png");
    }
  }
  void doFlags(){
    flags = new PImage[245];
    for(int i=0; i<flags.length; i++){
      flags[i] = loadImage("../_data/flag/"+nf(i,3)+"_48.gif");
    }
  }
  void doMap(){
    map = loadImage("../_data/flag/g.png");
  }
  void drawMap(PGraphics pg) {
    pg.rectMode(CENTER);
    pg.background(0);
    pg.translate(cell/2,cell/2);
    for(int i=0; i<cols; i++){
      for(int j=0; j<rows; j++){
        int toi = (int)map((i+frameCount)%cols,0,cols,0,map.width);
        int toj = (int)map(j,0,rows,0,map.height);
        int tok = toj*map.width+toi;
        color k = map.pixels[tok];
        pg.pushMatrix();
        pg.translate(i*cell,j*cell);
        pg.noStroke();
        pg.fill(k);
        pg.scale(doWaveform? gimmeDaWave(i,j):padding);
        pg.rect(0,0,cell,cell);
        pg.popMatrix();
      }
    }
  }
  void drawFlag(PGraphics pg) {
    pg.rectMode(CENTER);
    pg.background(0);
    pg.translate(cell/2,cell/2);
    for(int i=0; i<cols; i++){
      for(int j=0; j<rows; j++){
        int toi = (int)map(i,0,cols,0,48);
        int toj = (int)map(j,0,rows,0,32);
        int tok = toj*48+toi;
        color k = flags[frameCount%flags.length].pixels[tok];
        pg.pushMatrix();
        pg.translate(i*cell,j*cell);
        pg.noStroke();
        pg.fill(k);
        pg.scale(doWaveform? gimmeDaWave(i,j):padding);
        pg.rotate(radians(45));
        pg.rect(0,0,cell,cell);
        pg.popMatrix();
      }
    }
  }
  void drawBlank(PGraphics pg) {
    pg.rectMode(CENTER);
    pg.background(0);
    pg.translate(cell/2,cell/2);
    for(int i=0; i<cols; i++){
      for(int j=0; j<rows; j++){
        
        pg.pushMatrix();
        pg.translate(i*cell,j*cell);
        pg.noStroke();
        pg.fill(255);
        pg.scale(doWaveform? gimmeDaWave(i,j):padding);
        pg.rotate(radians(45));
        pg.rect(0,0,cell,cell);
        pg.popMatrix();
      }
    }
  }
   void drawWipala(PGraphics pg) {
    pg.rectMode(CENTER);
    pg.background(0);
    pg.translate(cell/2,cell/2);
    for(int i=0; i<cols; i++){
      for(int j=0; j<rows; j++){
        pg.pushMatrix();
        pg.translate(i*cell,j*cell);
        pg.noStroke();
        pg.fill(wcolors[(i+j+frameCount)%wcolors.length]);
        pg.scale(doWaveform? gimmeDaWave(i,j):padding);
        pg.rotate(radians(45));
        pg.rect(0,0,cell,cell);
        pg.popMatrix();
      }
    }
  }
  float gimmeDaWave(int i, int j){
    j -= rows/2;
    j = abs(j);
    float h = abs(in.left.get((int)map(i, 0, cols, 0, 1024)));
    h = map(h,0,1,0,rows/2);
    if(j>=h)
    return 0;//gimmeDaWave(i);
    else return 1 ;
  }
  float gimmeDaWave(int i){
    return abs(in.left.get((int)map(i, 0, cols, 0, 1024)));
  }
  void drawAHardPlace(PGraphics pg){
    pg.rectMode(CENTER);
    pg.background(0);
    pg.translate(cell/2,cell/2);
    for(int i=0; i<cols; i++){
      for(int j=0; j<rows; j++){
        int toi = (int)map(i,0,cols,0,48);
        int toj = (int)map(j,0,rows,0,32);
        int tok = toj*48+toi;
        color k = aHardPlace[frameCount%aHardPlace.length].pixels[tok];
        pg.pushMatrix();
        pg.translate(i*cell,j*cell);
        pg.noStroke();
        pg.fill(k);
        pg.scale(doWaveform? gimmeDaWave(i,j):padding);
        pg.rotate(radians(45));
        pg.rect(0,0,cell,cell);
        pg.popMatrix();
      }
    }
  }
  void drawLyrics(PGraphics pg){
    pg.rectMode(CENTER);
    pg.background(0);
    pg.translate(cell/2,cell/2);
    for(int i=0; i<cols; i++){
      for(int j=0; j<rows; j++){
        int toi = (int)map((i+0*frameCount)%cols,0,cols,0,lyrics.width);
        int toj = (int)map((j+1*frameCount)%rows,0,rows,0,lyrics.width/3);
        int tok = toj*map.width+toi;
        color k = lyrics.pixels[tok];
        pg.pushMatrix();
        pg.translate(i*cell,j*cell);
        pg.noStroke();
        pg.fill(k);
        pg.scale(doWaveform? gimmeDaWave(i,j):padding);
        pg.rect(0,0,cell,cell);
        pg.popMatrix();
      }
    }
  }
  //waveform scale
  //midi response
  //eval listen tidal
  //which song?
}
