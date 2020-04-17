//////////////////
// malditxSudaka
// 20180815
//////////////////
(
SuperDirt.start;
b = NetAddr.new("localhost",12000);
MIDIClient.init;
m=MIDIOut(2);//1);
n=MIDIOut(3);//2);
)
b.sendMsg("/process/cop", 1.0);
(
b.sendMsg("/process/cop", 0.0);
b.sendMsg("/scene/goAbyss0", 1.0);
)
(

m.program(0, 42);//korg a63

m.control(9,0,1);
m.program(9, 6);//boss u7

n.control(1,0,1);
n.program(1, 19);//roland b 20
)
b.sendMsg("/abyssal/wView", 4.0);
b.sendMsg("/abyssal/doRandomCell", 1.0);
b.sendMsg("/abyssal/doCoin", 1.0);
b.sendMsg("/abyssal/doWaveform", 1.0);
