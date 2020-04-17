//////////////////
// malditxSudaka
// @MAD
// 20190119
//////////////////
/*
oso+//s+-````.`...`.+hdmddddddhhhhhhhhyhhd+`  `.+sdd+-////yhhyys
+oso+/:-.`.```...`..-ymmdhyo/-.-osy/.```./o`  `.ooso/:+oooohmmdh
/+ooo+:-....``..````-yds/:--.``-smmy`.:+..+: ``-+oo+///ohhhdNNmm
///+o+:....`````````:yy+:-/o-`-/odmmo/:/+hhy```.:+yhho/:+syhhysh
hyymNdo-.``.```````:shyyddyo//yyymNmmdysydmm/``-//ohdy+/+osyssss
MMMhhdh/.`.````````/hmmmmmdddmdhdmNmmmdddmmms`-//+oossoosso+++yh
mNNyooso-.```..````-ymmmmmmmdhoodhhdyhs/yddd+.oyssyyo++sss+/+sdm
NyNMNs++:-.``-o+:.``ohdddddhy:oho+/:-syyoydd:.yddhhho++oyy++yyhd
hNNMdo+//++.``:ydo.`-oyhhhhy+shdhhs+/oyhyyhd.:shysso+/+ymmyosyhd
NNMMNNmddh+/-```..``./oyyhhhhhhy+o/sy/:/::yd./syo/+//oossdhy+ydm
MMMMMMmhhyoso`      `/oyhddy+:-:++hyo//sy/so`:hdyoooohy+:+ooosyh
MMMMNNNNNmNNm+:s/`   -yhy+::/shdyo:``-/oys+``./ysss+/oo/::ohdhyy
MMMMNMMMNNNNNmodh/``/hhs:-shyso/-``-+hdys-``...-+oo+:+oo++yhhhhs
MMMMNNNNNNmdmmhdd/oddy+/shhs/--/oyhyo/:-````````.-:+so/++osssyys
MMMMMNNNNmyso/omdsdddddhyo::ohyooo/.`   ``````   ``````.:+o/:/oy
MMMMMNNNNNmhdddmddhddhsooosyy+-.`.:+s` `````           `````..:o
*/

(
SuperDirt.start;
Speech.init(16);
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

(
m.program(0, 32


);//korg
)
/*
mmmmmmmmmmmmmmmmmdy/:--.``.-:/++/-/s+mhyhy+yh/+odNNNNNNNNNNNNNNN
mmmmmmmmmmmdys:--.-:::++/-:-:-ooo:/y/dshdh+oy+oodNNNNNNNNNNNNNNN
mmmmmmmmms/-.``-:--::-----/+++sss:++:h+smd+ssosodNNNNNNNNNNNNNNN
mmmmmmho/-..``../:.........-oosss-/++s++dhohssyohNNNNNNNNNNNNNNN
mmmmdo/...```````...-.``...-+:+++//s:hs+ymsdhyyssNNNNNNNNNNNNNNN
mmmmho-````````````.--:----:+/+/:o+hsyy+dmshhdsysNNNNNNNNNNNNNNN
mmmmm/-````````````.---::::-.::::/ohhys+mmysohosoNNNNNNNNNNNNNNN
mmmmd--``````````````-::::-.-+o/::/yhds+ymyood/soNNNNNNNNNNNNNNN
mmmms.``````.-----......-:+ydNds/-/syhhoymhshm+soNNNNNNNNNNNNNNN
mmmmd/.````.--------:::/shmmmmmdo-:oshysooyooh+osmNNNNNNNNNNNNNN
mmmmmd+-.``-----:::::/osyyso+osdm/-+y++oo+s+ooossmNNNNNNNNNNNNNN
mmmmmmy/-``---------:/++:---:osymh:os+/++oo+oo+ysmNNNNNNNNNNNNNN
mmmmmNmo-.`-:-.```...-:++-..-+hdmNo/ho/+sssosoossdNNNNNNNNNNNNNN
mmmmNNNy:.`.::........-omhoosydmNmmmm+/oso++oo+yyhNNNNNNNNNNNNNN
NmNNNNNm+/.`-/:-------:/yNNmdhdmmmmds+/+s+++ooosyhNNNNNNNNNNNNNN
mNNNNNNNNmo.-o::::::::::+mNmoosdmmm+:ooooo++shosshNNNNNNNNNNNNNN
NNNNNNNNNNmy:o+::///:--::+shddyydmmy://+ssooososymNNNNNNNNNNNNNN
NNNNNNNNNNNNhyh+:::::----/+ssyo/ydds///+ososyhsosmNNNNNNNNNNNNNN
NNNNNNNNNNNNNNNh+:::------/ohddyydh:/+/sss+ooyy/omNNNNNNNNNNNNNN
NNNNNNNNNNNNNNNNh/:::-::::-:+yhdddm-`.-/sssso+s+ymNNNNNNNNNNNNNN
NNNNNNNNNNNNNNNNNh+:::::::::+yhdhdmm+```.-+yooyohmNNNNNNNNNNNNNN
NNNNNNNNNNNNNNNm/`//::/:------+yhdmmms.```.:+osohdNNNNNNNNNNNNNN
NNNNNNNNNNNNNNm-``.+:--------:osyhdmms-..--...-:-:/+sydmNNNNNNNN
NNNNNNNNNNNNNm:```.----------:/+syhdy/-``.`````.-......-:/oymNNN
NNNNNNNNNNNNd-`````.--------:::/syys:.``.```````.............:sm
NNNNNNNNmy+:-`````````..-----::/oo/.```.````````.............``-
NNNNNmy/```..`````` ``````````````````.-.`..````.............```
NNNy/.``````.`````` `````````````````.--.....````............```
Ny-`` ```````````````````````````````---.`.....```...........```
:`    `````````....`````````````````.-:--.`...........-....``.``
        ` ` ` `.-...``````` ` ``````.-:---`..`..............````
                 `...```  ```   `````..--..````......--.`...````
*/
/*(
m.control(9,0,1);
m.program(9, 6);//boss u7
)
(
n.control(1,0,1);
n.program(1, 51);//roland b
)*/
b.sendMsg("/abyssal/wView", 0.0);
b.sendMsg("/abyssal/wView", 2.0);
b.sendMsg("/abyssal/wView", 1.0);
b.sendMsg("/abyssal/doRandomCell", 1.0);
b.sendMsg("/abyssal/doCoin", 1.0);

b.sendMsg("/abyssal/doWaveform", 1.0);
/*
MMMMMMMMMMMMMMMMMMMMho:.`` ````.-.````````.+NMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMdy-.``````..`...`      ``:sNMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMNs:```````..-..```       .+-hMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMm+:-::---/ssosho:.`..``````:+MMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMN+//hhyyo+/+o:-sys+:::::..`-:NMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMd:+mmmmddyo/--:ossyo+/:::/osMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMM.smNNNNNmmdhyos+++/++://+/sMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMy:o///ohdmmmdhhy+-:--:-```.`NMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMd+h:-  `:so-` .. ``-/o:```:-MMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMddds::-/dms-``---:+oso::.:yMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMmmhyyhdNNdhso++osysys/+ohMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMmoshddNNhhshys/::+shNmNMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMhyhhhhyo++hhhs+-/odMMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMNydho-``.+yyyy+/++sNMMMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMMMmo-:-..-:-..:/:-:/.smMMMMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMMMMMMNmh/--....`..--/..:. `./mNMMMMMMMMMMMMMMMM
MMMMMMMMMMMMMMMMMNhyo/o+.:`/+o/////-...-:`   ``//:+oydNMMMMMMMMM
MMMMMMMMMMMMMMNmy///+my-//  ...```` `..-.    `  +:://yhdNMNNNNMM
MMMMMMmddmdhs/osyNNmh+``-`   ``     ``...``` `.  +mNms+:-/sss/::
MMMmy+++hhys-:::o+sy/  .:`           `..:--` -/:``oN+/:.-.+yhhys
Nm+oysydmmmsyy/o++o+  `:/-   `.``````.:+so`  `//:``-s++++y+ydmm+
*/
