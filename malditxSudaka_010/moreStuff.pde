void shaderStuff() {
  shader      = loadShader("../_data/abyssalShader_001.glsl");
  shader(shader);
  shader.set("resolution", float(width), float(width/3));
  shader.set("time", frameCount*0.1*.3);  //500.0
  //shader.set("mouse", float(mouseX), float(mouseY));
  shader.set("leftGlitch", environment.leftGlitch);
  shader.set("rightGlitch", environment.rightGlitch);
  shader.set("interlaceF", environment.interlaceF);
  shader.set("hueCyclingF", environment.hueCyclingF);
  shader.set("hShearAmp", environment.hSideShearAmp);
  shader.set("vShearAmp", environment.vSideShearAmp);
  shader.set("micLevel", abs(in.left.get(0)));
  shader.set("doH", float(int(environment.doH)));
}
void drawBuffer() {
  buffer.beginDraw();
  abyssal.draw(buffer);
  buffer.endDraw();
  buffer.updatePixels();
  buffer.beginDraw();
  buffer.tint(255, environment.coverOpacity);
  buffer.image(cover, 0, 0, buffer.width, buffer.height);
  buffer.endDraw();
  buffer.updatePixels();
}
