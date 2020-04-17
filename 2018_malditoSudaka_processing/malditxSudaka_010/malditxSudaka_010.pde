/*
to do:
ok-reunir all booleans status 
nope-agrupar abyss en themes
maybe-maybe activar y desactivar y luego secuenciar como en cimatica
-
*/
import ddf.minim.*;
import oscP5.*;
import netP5.*;

Minim       minim;
AudioInput  in;
OscP5       oscP5;
NetAddress  myRemoteLocation;

Environment environment;
Abyssal     abyssal;

PGraphics  buffer;
PImage     cover;
PShader    shader;

boolean    wide = true;

void setup() {
  if (!wide)size(displayHeight, displayHeight,P3D);
  else  size(displayWidth, displayHeight/2, P3D);
  colorMode(HSB);
  textureWrap(REPEAT);

  minim = new Minim(this);
  in = minim.getLineIn();

  buffer      = createGraphics(800, 400, P3D);
  cover       = loadImage("../_data/sudakaCover.png");
  
  environment = new Environment();
  abyssal     = new Abyssal();

  oscSetup();
}

void draw() {
  
  background(0);
  noCursor();
  drawBuffer();
  if (environment.doProcess)shaderStuff();
  else resetShader();
  image(buffer, 0, (height-width/2)/2, width, width/2);
}

void keyPressed(){
  abyssal.keyPressed();
}






