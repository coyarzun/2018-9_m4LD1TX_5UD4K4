class Environment {
  boolean doProcess, doH;
  float   coverOpacity;
  float   leftGlitch, rightGlitch;
  float   hueCyclingF;
  float   interlaceF;
  float   hSideShearAmp, vSideShearAmp;

  int     bgMode;

  float   audioScaleFactor;

  Environment() {
    init();
  }
  void init() {
    doProcess                  = false;
    doH                        = false;
    coverOpacity               = 255.0;
    leftGlitch                 = 0;//-0.8;
    rightGlitch                = 0;//-leftGlitch;
    hueCyclingF                = 1.0;
    hSideShearAmp              = 1.0;
    vSideShearAmp              = 1.0;

    bgMode                     = 1;
    interlaceF                 = 1.0;

    audioScaleFactor           = 1.0;
  }

  void setDo(float v)    {      doProcess         = v!=0;  }
  void setDoH(float v)   {      doH               = v!=0;  }
  void setCop(float v)   {      coverOpacity      = map(v, 0.0, 1.0, 0, 255);  }
  void setLG(float v)    {      leftGlitch        = map(v, 0.0, 1.0, -1, 1);  }
  void setRG(float v)    {      rightGlitch       = map(v, 0.0, 1.0, -1, 1);  }
  void setHC(float v)    {      hueCyclingF       = map(v, 0.0, 1.0, 0, 1);  }
  void setInter(float v) {      interlaceF        = map(v, 0.0, 1.0, 0.0, 2.0);  }
  void setHSA(float v)   {      hSideShearAmp     = map(v, 0.0, 1.0, 0, 1);  }
  void setVSA(float v)   {      vSideShearAmp     = map(v, 0.0, 1.0, 0, 1);  }
  void setBgm(float v)   {      bgMode            = (int)map(v, 0.0, 1.0, 0, 16);  }

  void setASF(float v)   {      audioScaleFactor          = map(v, 0.0, 1.0, 0, 1);  }
}
