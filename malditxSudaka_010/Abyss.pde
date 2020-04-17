class Abyss {
  boolean doOrtho, ytrans, doBlink, doCycle;
  boolean doXart, doYart, doZart, doSpinY, doSpinZ;
  boolean doSpin, doScaleUnit, boxMode, doGrid;
  boolean doLights;
  boolean doAlpha,doPolar;
  boolean doRandomPolar,doBlinkInvert,doInvert,doRadiox;
  boolean doSpinX;
  boolean doFirst, doRumble;
  boolean doRandomCell, doCoin, doWaveform;
  
  int wlight = 0, wView = 0, colorMood = 0; 
  
  Abyss() {
  }
  void draw(PGraphics pg) {
  }
  void resetBuffer(){
  }
  void keyPressed(){
    if (key=='c')doCycle=!doCycle;
    if (key=='b')doBlink=!doBlink;
    if (key=='t')ytrans=!ytrans;
    if (key=='o')doOrtho=!doOrtho;
    if (key=='a'){doAlpha=!doAlpha;}
    if (key=='b'){doBlink=!doBlink;}
    if (key=='u')resetBuffer();
    if (key=='k') {      wlight++;      wlight%=3;    }
    if (key=='v') {      wView++;      wView%=5;    }
    if (key=='l') {doLights=!doLights;}
    if (key=='x') {doSpinX=!doSpinX;}
    if (key=='y') {doSpinY=!doSpinY;}
    if (key=='z') {doSpinZ=!doSpinZ;}
    if (key=='p') {doPolar=!doPolar;} 
    if (key=='g') {      doGrid=!doGrid;    }
    if (key=='s') {      doSpin=!doSpin;    }
    if (key=='e') {      doScaleUnit=!doScaleUnit;    }
    if (key=='m') {      colorMood++;      colorMood%=3;    }  
    if (key=='q'){doRandomPolar=!doRandomPolar;} 
    if (key=='f'){doRadiox=!doRadiox;}  
    if (key=='j') {      boxMode=!boxMode;    }
    if (key=='i') {      doFirst=!doFirst;    }
    if (key=='h') {      doRumble=!doRumble;    }
  }
}
