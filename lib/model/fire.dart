class Posst {
  const Posst({
    this.pic,
    this.tyc0,
    this.tyc1,
    this.ttyy,
    this.atk,
    this.def,
    this.nai,
    this.maxhp,
    this.maxcp2,
    this.maxcp3,
    this.maxcp4,
    this.cach,
    this.flee,
    this.walk,
    this.generation,
  });
  final String pic;
  final String tyc0;
  final String tyc1;
  final String ttyy;
  final int atk;
  final int def;
  final int nai;
  final int maxhp;
  final int maxcp2;
  final int maxcp3;
  final String maxcp4;
  final String cach;
  final String flee;
  final String walk;
  final String generation;
}


final List<Posst> possts = [
  Posst(
    pic:"lib/images/p21.png",tyc0:"lib/images/mgrass.png",tyc1:"lib/images/mpoison.png",generation:"1",ttyy:"lib/images/mgrass.pnglib/images/mpoison.png,",atk:118,def:111,nai:128,maxhp:113,maxcp2:637,maxcp3:955,maxcp4:"1115",cach:"20%",flee:"10%",walk:"3 km",
//cname:"妙蛙種子#1",at1:"藤鞭  14 dps ",at2:"lib/images/Grass.png",at3:"強力鞭打  41.5 dps ",at4:"lib/images/Grass.png",at5:"藤鞭  14 dps ",at6:"lib/images/Grass.png",at7:"污泥炸彈  41.7 dps ",at8:"lib/images/Poison.png",
  ),
  Posst(
    pic:"lib/images/p22.png",tyc0:"lib/images/mgrass.png",tyc1:"lib/images/mpoison.png",generation:"1",ttyy:"lib/images/mgrass.pnglib/images/mpoison.png,",atk:151,def:143,nai:155,maxhp:134,maxcp2:970,maxcp3:1456,maxcp4:"1699",cach:"10%",flee:"7%",walk:"3 km",
//cname:"妙蛙草#2",at1:"藤鞭  14 dps ",at2:"lib/images/Grass.png",at3:"強力鞭打  41.5 dps ",at4:"lib/images/Grass.png",at5:"飛葉快刀  15.6 dps ",at6:"lib/images/Grass.png",at7:"日光束  44.1 dps ",at8:"lib/images/Grass.png",
  ),
  Posst(
    pic:"lib/images/p23.png",tyc0:"lib/images/mgrass.png",tyc1:"lib/images/mpoison.png",generation:"1",ttyy:"lib/images/mgrass.pnglib/images/mpoison.png,",atk:198,def:189,nai:190,maxhp:162,maxcp2:1554,maxcp3:2332,maxcp4:"2720",cach:"5%",flee:"5%",walk:"3 km",
//cname:"妙蛙花#3",at1:"藤鞭  14 dps ",at2:"lib/images/Grass.png",at3:"瘋狂植物  46.2 dps ",at4:"lib/images/Grass.png",at5:"飛葉快刀  15.6 dps ",at6:"lib/images/Grass.png",at7:"瘋狂植物  46.2 dps ",at8:"lib/images/Grass.png",
  ),
  Posst(
    pic:"lib/images/p24.png",tyc0:"lib/images/mfire.png",tyc1:"",generation:"1",ttyy:"lib/images/mfire.png,",atk:116,def:93,nai:118,maxhp:105,maxcp2:560,maxcp3:840,maxcp4:"980",cach:"20%",flee:"10%",walk:"3 km",
//cname:"小火龍#4",at1:"火花  12 dps ",at2:"lib/images/Fire.png",at3:"噴射火焰  38.2 dps ",at4:"lib/images/Fire.png",at5:"火花  12 dps ",at6:"lib/images/Fire.png",at7:"蓄能焰襲  22.1 dps ",at8:"lib/images/Fire.png",
  ),
  Posst(
    pic:"lib/images/p25.png",tyc0:"lib/images/mfire.png",tyc1:"",generation:"1",ttyy:"lib/images/mfire.png,",atk:158,def:126,nai:151,maxhp:131,maxcp2:944,maxcp3:1417,maxcp4:"1653",cach:"10%",flee:"7%",walk:"3 km",
//cname:"火恐龍#5",at1:"火焰牙  14.7 dps ",at2:"lib/images/Fire.png",at3:"噴射火焰  38.2 dps ",at4:"lib/images/Fire.png",at5:"火花  12 dps ",at6:"lib/images/Fire.png",at7:"噴射火焰  38.2 dps ",at8:"lib/images/Fire.png",
  ),
  Posst(
    pic:"lib/images/p26.png",tyc0:"lib/images/mfire.png",tyc1:"lib/images/mflying.png",generation:"1",ttyy:"lib/images/mfire.pnglib/images/mflying.png,",atk:223,def:173,nai:186,maxhp:158,maxcp2:1651,maxcp3:2476,maxcp4:"2889",cach:"5%",flee:"5%",walk:"3 km",
//cname:"噴火龍#6",at1:"火焰旋渦  15.3 dps ",at2:"lib/images/Fire.png",at3:"爆炸烈焰  40 dps ",at4:"lib/images/Fire.png",at5:"火焰旋渦  15.3 dps ",at6:"lib/images/Fire.png",at7:"爆炸烈焰  40 dps ",at8:"lib/images/Fire.png",
  ),
  Posst(
    pic:"lib/images/p27.png",tyc0:"lib/images/mwater.png",tyc1:"",generation:"1",ttyy:"lib/images/mwater.png,",atk:94,def:121,nai:127,maxhp:112,maxcp2:540,maxcp3:810,maxcp4:"946",cach:"20%",flee:"10%",walk:"3 km",
//cname:"傑尼龜#7",at1:"泡沫  12 dps ",at2:"lib/images/Water.png",at3:"水流尾  31.6 dps ",at4:"lib/images/Water.png",at5:"泡沫  12 dps ",at6:"lib/images/Water.png",at7:"水流尾  31.6 dps ",at8:"lib/images/Water.png",
  ),
  Posst(
    pic:"lib/images/p28.png",tyc0:"lib/images/mwater.png",tyc1:"",generation:"1",ttyy:"lib/images/mwater.png,",atk:126,def:155,nai:153,maxhp:132,maxcp2:850,maxcp3:1275,maxcp4:"1488",cach:"10%",flee:"7%",walk:"3 km",
//cname:"卡咪龜#8",at1:"水槍  12 dps ",at2:"lib/images/Water.png",at3:"水炮  47.3 dps ",at4:"lib/images/Water.png",at5:"水槍  12 dps ",at6:"lib/images/Water.png",at7:"冰凍光束  27.3 dps ",at8:"lib/images/Ice.png",
  ),
  Posst(
    pic:"lib/images/p29.png",tyc0:"lib/images/mwater.png",tyc1:"",generation:"1",ttyy:"lib/images/mwater.png,",atk:171,def:207,nai:188,maxhp:160,maxcp2:1409,maxcp3:2113,maxcp4:"2466",cach:"5%",flee:"5%",walk:"3 km",
//cname:"水箭龜#9",at1:"水槍  12 dps ",at2:"lib/images/Water.png",at3:"加農水砲  56.8 dps ",at4:"lib/images/Water.png",at5:"水槍  12 dps ",at6:"lib/images/Water.png",at7:"加農水砲  56.8 dps ",at8:"lib/images/Water.png",
  ),
  Posst(
    pic:"lib/images/p210.png",tyc0:"lib/images/mbug.png",tyc1:"",generation:"1",ttyy:"lib/images/mbug.png,",atk:55,def:55,nai:128,maxhp:113,maxcp2:249,maxcp3:374,maxcp4:"437",cach:"50%",flee:"20%",walk:"1 km",
//cname:"綠毛蟲#10",at1:"蟲咬  12 dps ",at2:"lib/images/Bug.png",at3:"掙扎  15.9 dps ",at4:"lib/images/Normal.png",at5:"蟲咬  12 dps ",at6:"lib/images/Bug.png",at7:"掙扎  15.9 dps ",at8:"lib/images/Normal.png",
  ),
  Posst(
    pic:"lib/images/p211.png",tyc0:"lib/images/mbug.png",tyc1:"",generation:"1",ttyy:"lib/images/mbug.png,",atk:45,def:80,nai:137,maxhp:120,maxcp2:257,maxcp3:386,maxcp4:"450",cach:"25%",flee:"9%",walk:"1 km",
//cname:"鐵甲蛹#11",at1:"蟲咬  12 dps ",at2:"lib/images/Bug.png",at3:"掙扎  15.9 dps ",at4:"lib/images/Normal.png",at5:"蟲咬  12 dps ",at6:"lib/images/Bug.png",at7:"掙扎  15.9 dps ",at8:"lib/images/Normal.png",
  ),
  Posst(
    pic:"lib/images/p212.png",tyc0:"lib/images/mbug.png",tyc1:"lib/images/mflying.png",generation:"1",ttyy:"lib/images/mbug.pnglib/images/mflying.png,",atk:167,def:137,nai:155,maxhp:134,maxcp2:1044,maxcp3:1566,maxcp4:"1827",cach:"12.5%",flee:"6%",walk:"1 km",
//cname:"巴大蝶#12",at1:"念力  12.5 dps ",at2:"lib/images/Psychic.png",at3:"蟲鳴  29.2 dps ",at4:"lib/images/Bug.png",at5:"念力  12.5 dps ",at6:"lib/images/Psychic.png",at7:"蟲鳴  29.2 dps ",at8:"lib/images/Bug.png",
  ),
  Posst(
    pic:"lib/images/p213.png",tyc0:"lib/images/mbug.png",tyc1:"lib/images/mpoison.png",generation:"1",ttyy:"lib/images/mbug.pnglib/images/mpoison.png,",atk:63,def:50,nai:120,maxhp:106,maxcp2:260,maxcp3:391,maxcp4:"456",cach:"50%",flee:"20%",walk:"1 km",
//cname:"獨角蟲#13",at1:"蟲咬  12 dps ",at2:"lib/images/Bug.png",at3:"掙扎  15.9 dps ",at4:"lib/images/Normal.png",at5:"蟲咬  12 dps ",at6:"lib/images/Bug.png",at7:"掙扎  15.9 dps ",at8:"lib/images/Normal.png",
  ),
];