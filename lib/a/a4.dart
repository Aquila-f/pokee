import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class A4 extends StatefulWidget {
  final String url;
  A4({Key key, @required this.url}) : super(key: key);
  @override
  _A4State createState() => _A4State();
}
class Note {
  String pic,tyc0,tyc1,atk,def,nai,maxhp,maxcp2,maxcp3,maxcp4,cach,flee,walk;
  String cname,na,at1,at2,at3,at4,at5,at6,at7,at8;
  String b1,b2,b3,b4,b5,b6,b7,b8,b9;
  String g1,g2,g3,g4,g5,g6,g7,g8,g9;
  String bu11,bu12,bu13,bu14,bu15,bu16;
  String bu21,bu22,bu23,bu24,bu25,bu26;
  String bu31,bu32,bu33,bu34,bu35,bu36;
  String ttyy,generation;
  String am01,amn01,amd01,ams01,am02,amn02,amd02,ams02,am03,amn03,amd03,ams03,am04,amn04,amd04,ams04,am05,amn05,amd05,ams05,am06,amn06,amd06,ams06,am07,amn07,amd07,ams07;
  String am11,amn11,amd11,ams11,am12,amn12,amd12,ams12,am13,amn13,amd13,ams13,am14,amn14,amd14,ams14,am15,amn15,amd15,ams15,am16,amn16,amd16,ams16,am17,amn17,amd17,ams17,am18,amn18,amd18,ams18,am19,amn19,amd19,ams19,am110,amn110,amd110,ams110;
  Note.fromJson(Map<String, dynamic> json) {
    pic = json['pic'];tyc0 = json['tyc0'];tyc1 = json['tyc1'];atk = json['atk'];def = json['def'];nai = json['nai'];maxhp = json['maxhp'];maxcp2 = json['maxcp2'];maxcp3 = json['maxcp3'];maxcp4 = json['maxcp4'];cach = json['cach'];flee = json['flee'];walk = json['walk'];
    cname = json['cname'];na = json['na'];at1 = json['at1'];at2 = json['at2'];at3 = json['at3'];at4 = json['at4'];at5 = json['at5'];at6 = json['at6'];at7 = json['at7'];at8 = json['at8'];
    b1 = json['b1'];b2 = json['b2'];b3 = json['b3'];b4 = json['b4'];b5 = json['b5'];b6 = json['b6'];b7 = json['b7'];b8 = json['b8'];b9 = json['b9'];
    g1 = json['g1'];g2 = json['g2'];g3 = json['g3'];g4 = json['g4'];g5 = json['g5'];g6 = json['g6'];g7 = json['g7'];g8 = json['g8'];g9 = json['g9'];
    bu11 = json['bu11'];bu12 = json['bu12'];bu13 = json['bu13'];bu14 = json['bu14'];bu15 = json['bu15'];bu16 = json['bu16'];
    bu21 = json['bu21'];bu22 = json['bu22'];bu23 = json['bu23'];bu24 = json['bu24'];bu25 = json['bu25'];bu26 = json['bu26'];
    bu31 = json['bu31'];bu32 = json['bu32'];bu33 = json['bu33'];bu34 = json['bu34'];bu35 = json['bu35'];bu36 = json['bu36'];
    ttyy = json['ttyy'];generation = json['generation'];
    am01 = json['am01'];amn01 = json['amn01'];amd01 = json['amd01'];ams01 = json['ams01'];am02 = json['am02'];amn02 = json['amn02'];amd02 = json['amd02'];ams02 = json['ams02'];am03 = json['am03'];amn03 = json['amn03'];amd03 = json['amd03'];ams03 = json['ams03'];am04 = json['am04'];amn04 = json['amn04'];amd04 = json['amd04'];ams04 = json['ams04'];am05 = json['am05'];amn05 = json['amn05'];amd05 = json['amd05'];ams05 = json['ams05'];am06 = json['am06'];amn06 = json['amn06'];amd06 = json['amd06'];ams06 = json['ams06'];am07 = json['am07'];amn07 = json['amn07'];amd07 = json['amd07'];ams07 = json['ams07'];
    am11 = json['am11'];amn11 = json['amn11'];amd11 = json['amd11'];ams11 = json['ams11'];am12 = json['am12'];amn12 = json['amn12'];amd12 = json['amd12'];ams12 = json['ams12'];am13 = json['am13'];amn13 = json['amn13'];amd13 = json['amd13'];ams13 = json['ams13'];am14 = json['am14'];amn14 = json['amn14'];amd14 = json['amd14'];ams14 = json['ams14'];am15 = json['am15'];amn15 = json['amn15'];amd15 = json['amd15'];ams15 = json['ams15'];am16 = json['am16'];amn16 = json['amn16'];amd16 = json['amd16'];ams16 = json['ams16'];am17 = json['am17'];amn17 = json['amn17'];amd17 = json['amd17'];ams17 = json['ams17'];am18 = json['am18'];amn18 = json['amn18'];amd18 = json['amd18'];ams18 = json['ams18'];am19 = json['am19'];amn19 = json['amn19'];amd19 = json['amd19'];ams19 = json['ams19'];am110 = json['am110'];amn110 = json['amn110'];amd110 = json['amd110'];ams110 = json['ams110'];
  }
}
class _A4State extends State<A4> {
  List<Note> _b5 = List<Note>();
  List<Note> _boss5 = List<Note>();

  Future<List<Note>> bs5Notes() async {
    var url = widget.url;
    var response = await http.get(url);

    var bs5 = List<Note>();

    if (response.statusCode == 200) {
      var bs5Json = json.decode(response.body);
      for (var bs5Json in bs5Json) {
        bs5.add(Note.fromJson(bs5Json));
      }
    }
    return bs5;
  }

  @override
  void initState() {
    bs5Notes().then((value) {
      setState(() {
        _b5.addAll(value);
        _boss5 = _b5;
      });
    });
    super.initState();
  }
  String t1,z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11,z12,z13,z14,z15,z16,z17,z18,z19,z20,z21,z22,z23,z24,z25,z26,z27,z28,z29,z30;
  Color aaa = Colors.transparent;
  Color a1=Colors.transparent,a2=Colors.transparent,a3=Colors.transparent,a4=Colors.transparent,a5=Colors.transparent,a6=Colors.transparent,a7=Colors.transparent,a8=Colors.transparent,a9=Colors.transparent;
  Color c1=Colors.transparent,c2=Colors.transparent,c3=Colors.transparent,c4=Colors.transparent,c5=Colors.transparent,c6=Colors.transparent,c7=Colors.transparent,c8=Colors.transparent,c9=Colors.transparent;
  Color d1=Colors.transparent,d2=Colors.transparent,d3=Colors.transparent,d4=Colors.transparent,d5=Colors.transparent;
  double sr = 40;
  String aa = "",bb = "";
  String xx = 'x3';
  int xxx = 3;
  double si = 15,di = 3,di1 = 1;
  var srb = Icons.keyboard_arrow_down;
  String bg = '';
  Color bgc = Colors.grey;
  double mh = 20;

  @override
  Widget build(BuildContext context) {
    if(widget.url == 'https://aquila-f.github.io/g5pklb/'){
      t1='中文';z1='圖鑑';z2='查詢';z3='攻擊';z4='防禦';z5='耐力';z6='屬性';z7='優勢屬性';z8='劣勢屬性';z9='最佳技能組';z10='進攻';z11='防禦';z12='推薦打手';z13='捕捉率';z14='逃跑率';z15='夥伴糖果';
      z16='關都';z17='城都';z18='豐緣';z19='神奧';z20='合眾';z21='最高CP';z22='等級20';z23='等級30';z24='等級40';z25='全部技能';z26='快速技能';z27='傷害';z28='DPS';z29='主要技能';z30='*DPS : 每1秒造成的傷害量  (傷害/施放時間) ';
    }else if(widget.url == 'https://aquila-f.github.io/pklben/'){
      t1='English';z1='Pokemon Info';z2='Search';z3='Attack';z4='Defence';z5='Stamina';z6='Type';z7='Resistant to';z8='Vulnerable to';z9='Best Moveset';z10='Offense';z11='Defense';z12='Counters';z13='capture rate';z14='flee rate';z15='walk distance';
      z16='Kanto';z17='Johto';z18='Hoenn';z19='Sinnoh';z20='Unova';z21='MaxCP';z22='Level 20';z23='Level 30';z24='Level 40';z25='All Moves';z26='Quilk Move';z27='Damage';z28='DPS';z29='Main Move';z30='*DPS : Damage Per Second';
    }else if(widget.url == 'https://aquila-f.github.io/pklbjp/'){
      t1='日本語';z1='図鑑';z2='探している';z3='こうげき';z4='防御';z5='スタミナ';z6='ポケモン タイプ';z7='Resistant to';z8='Vulnerable to';z9='Best Moveset';z10='こうげき';z11='防御';z12='Counters';z13='capture rate';z14='flee rate';z15='walk distance';
      z16='カントー';z17='ジョウト';z18='ホウエン';z19='シンオウ';z20='イッシュ';z21='MaxCP';z22='Level 20';z23='Level 30';z24='Level 40';z25='全技';z26='Quilk Move';z27='ダメージ';z28='DPS';z29='Main Move';z30='*DPS : Damage Per Second';
    }
    double wi=MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(z1,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          actions: <Widget>[
            Container(margin: EdgeInsets.only(top: 13,bottom: 13,right: 10),width: 60,child: Container(decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),borderRadius: BorderRadius.circular(20)
            ),child: InkWell(child: Row(children: <Widget>[
//              Container(margin: EdgeInsets.only(left: 5),child: Container(alignment: Alignment.center,child: Text('Language:',style: TextStyle(color: Colors.black26),),)),
              Expanded(child: Container(alignment: Alignment.center,child: Text(t1,style: TextStyle(color: Colors.black26,fontSize: 13),),))

            ],),
            ),),),

          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [Color.fromRGBO(180, 180, 255, 1), Color.fromRGBO(255, 150, 150, 1)])
            ),
          ),
          elevation: 0,
        ),
//        body: GridView.builder(gridDelegate: null, itemBuilder: null)
        body: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(200, 230, 255, 1),
              image: DecorationImage(image: AssetImage('lib/images/fpbg.png'))),
          child: Column(children: <Widget>[
            AnimatedContainer(
                curve: Curves.fastOutSlowIn,
                height: sr,
                duration: Duration(microseconds: 300000),
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey,width: 1)),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [Color.fromRGBO(180, 180, 255, 1), Color.fromRGBO(255, 150, 150, 1)])
                ),
//              padding: EdgeInsets.only(left: 15,right: 15,bottom: 5),
                child: Column(children: <Widget>[
                  Container(child: Row(children: <Widget>[
                    Expanded(child: Container(height: 38,padding: EdgeInsets.only(left: 10,right: 0,bottom: 5),child: TextField(
                      style: TextStyle(fontSize: 13),
                      decoration: InputDecoration(
                        fillColor: Colors.white10,
                        filled: true,
                        contentPadding: EdgeInsets.only(left: 10),
//                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide(color: Colors.black12,width: 1)),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0),borderSide: BorderSide(color: Colors.black12,width: 1)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0),borderSide: BorderSide(color: Colors.black12,width: 2)),
//                  labelStyle: TextStyle(color: Colors.black),
                        suffixIcon: Icon(Icons.search,size: 18,),
//          icon: Icon(Icons.keyboard_arrow_right,size: 20,),
                        hintText: z2,
                        hintStyle: TextStyle(color: Colors.black38),
                      ),
                      onChanged: (text) {
                        text = text.toLowerCase();
                        setState(() {
                          _boss5 = _b5.where((note) {
                            var bossname = note.cname.toLowerCase();
                            return bossname.contains(text);
                          }).toList();
                        });
                      },
                    ),)),
                    InkWell(child: Container(alignment: Alignment.center,height: 38,padding: EdgeInsets.only(bottom: 5),margin: EdgeInsets.only(left: 15,right: 15),child: Icon(srb,color: Colors.black38,size: 20,),),
                      onTap: (){
                        setState(() {
                          if(srb == Icons.keyboard_arrow_down){
                            srb = Icons.keyboard_arrow_up;
                          }
                          else if(srb == Icons.keyboard_arrow_up){
                            srb = Icons.keyboard_arrow_down;
                          }
                          if(sr == 40){
                            sr = 175;
                          }
                          else if(sr == 175){
                            sr = 40;
                          }
                        });},
                    ),
                    InkWell(child: Container(alignment: Alignment.center,height: 38,margin: EdgeInsets.only(left: 5,right: 15),padding: EdgeInsets.only(bottom: 5),child: Container(child: Text(xx,style: TextStyle(color: Colors.black38),),),),
                      onTap: (){
                        setState(() {
                          if(xx == 'x3'){
                            xxx = 4;
                            xx = 'x4';
                            si = 13;
                            di = 1;
                            di1 = 2;
                          }else if(xx == 'x4'){
                            xxx = 5;
                            xx = 'x5';
                            si = 10;
                            di = 0;
                            di1 = 3;
                          }else if(xx == 'x5'){
                            xxx = 3;
                            xx = 'x3';
                            si = 15;
                            di = 3;
                            di1 = 1;
                          }
                        });},
                    ),
                    InkWell(child: Container(alignment: Alignment.center,height: 38,padding: EdgeInsets.only(bottom: 5),margin: EdgeInsets.only(left: 5,right: 15),child: Icon(Icons.close,color: Colors.black38,size: 18,),),
                      onTap: (){
                        setState(() {
                          if(sr == 175){
                            sr = 40;
                            srb = Icons.keyboard_arrow_down;
                          }
                          xxx = 3;
                          xx = 'x3';
                          si = 15;
                          di = 3;
                          di1 = 1;

                          d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;
                          _boss5 = _b5.where((note) {
                            var bossname = note.cname.toLowerCase();
                            return bossname.contains('');
                          }).toList();
                        });},
                    )

                  ],),),

                  Expanded(child: Container(margin: EdgeInsets.all(5),child: Column(children: <Widget>[
                    Expanded(child: Row(children: <Widget>[
                      sric("lib/images/Bug.png", "bug", a1),
                      sric("lib/images/Dark.png", "dark", a2),
                      sric("lib/images/Dragon.png", "dragon", a3),
                      sric("lib/images/Electric.png", "electric", a4),
                      sric("lib/images/Fairy.png", "fairy", a5),
                      sric("lib/images/Fighting.png", "fighting", a6),
                      sric("lib/images/Fire.png", "fire", a7),
                      sric("lib/images/Flying.png", "flying", a8),
                      sric("lib/images/Ghost.png", "ghost", a9),
                    ],),),
                    Expanded(child: Row(children: <Widget>[
                      sric("lib/images/Grass.png", "grass", c1),
                      sric("lib/images/Ground.png", "ground", c2),
                      sric("lib/images/Ice.png", "ice", c3),
                      sric("lib/images/Normal.png", "normal", c4),
                      sric("lib/images/Poison.png", "poison", c5),
                      sric("lib/images/Psychic.png", "psychic", c6),
                      sric("lib/images/Rock.png", "rock", c7),
                      sric("lib/images/Steel.png", "steel", c8),
                      sric("lib/images/Water.png", "water", c9),
                    ],),),
                    Expanded(child: Row(children: <Widget>[
                      srg(z16, Colors.redAccent, '1',Colors.black54,d1),
                      srg(z17, Colors.amberAccent, '2',Colors.black54,d2),
                      srg(z18, Colors.greenAccent, '3',Colors.black54,d3),
                      srg(z19, Colors.blueAccent, '4',Colors.black54,d4),
                      srg(z20, Colors.orangeAccent, '5',Colors.black54,d5),
                    ],),),
//                    Container(height: 30,child: Row(children: <Widget>[
//                      Container()
//                    ],),)
                  ],),))
                ],)
            ),
//            ExpansionTile(title: null),
            Expanded(child: Listener(
              onPointerMove: (m){
                setState(() {
                  sr = 40;
                  srb = Icons.keyboard_arrow_down;
                });
                return FocusScope.of(context).requestFocus(new FocusNode());
              },
              child: Container(child: Container(child: GridView.builder(
//            physics: NeverScrollableScrollPhysics(),
                itemCount: _boss5.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: xxx,childAspectRatio: 28/30),
                itemBuilder: (context, index) {
                  return _boss1(_boss5[index].maxcp2.toString(),_boss5[index].maxcp3.toString(),_boss5[index].maxcp4.toString(),_boss5[index].am01.toString(),_boss5[index].amn01.toString(),_boss5[index].amd01.toString(),_boss5[index].ams01.toString(),_boss5[index].am02.toString(),_boss5[index].amn02.toString(),_boss5[index].amd02.toString(),_boss5[index].ams02.toString(),_boss5[index].am03.toString(),_boss5[index].amn03.toString(),_boss5[index].amd03.toString(),_boss5[index].ams03.toString(),_boss5[index].am04.toString(),_boss5[index].amn04.toString(),_boss5[index].amd04.toString(),_boss5[index].ams04.toString(),_boss5[index].am05.toString(),_boss5[index].amn05.toString(),_boss5[index].amd05.toString(),_boss5[index].ams05.toString(),_boss5[index].am06.toString(),_boss5[index].amn06.toString(),_boss5[index].amd06.toString(),_boss5[index].ams06.toString(),_boss5[index].am07.toString(),_boss5[index].amn07.toString(),_boss5[index].amd07.toString(),_boss5[index].ams07.toString(),_boss5[index].am11.toString(),_boss5[index].amn11.toString(),_boss5[index].amd11.toString(),_boss5[index].ams11.toString(),_boss5[index].am12.toString(),_boss5[index].amn12.toString(),_boss5[index].amd12.toString(),_boss5[index].ams12.toString(),_boss5[index].am13.toString(),_boss5[index].amn13.toString(),_boss5[index].amd13.toString(),_boss5[index].ams13.toString(),_boss5[index].am14.toString(),_boss5[index].amn14.toString(),_boss5[index].amd14.toString(),_boss5[index].ams14.toString(),_boss5[index].am15.toString(),_boss5[index].amn15.toString(),_boss5[index].amd15.toString(),_boss5[index].ams15.toString(),_boss5[index].am16.toString(),_boss5[index].amn16.toString(),_boss5[index].amd16.toString(),_boss5[index].ams16.toString(),_boss5[index].am17.toString(),_boss5[index].amn17.toString(),_boss5[index].amd17.toString(),_boss5[index].ams17.toString(),_boss5[index].am18.toString(),_boss5[index].amn18.toString(),_boss5[index].amd18.toString(),_boss5[index].ams18.toString(),_boss5[index].am19.toString(),_boss5[index].amn19.toString(),_boss5[index].amd19.toString(),_boss5[index].ams19.toString(),_boss5[index].am110.toString(),_boss5[index].amn110.toString(),_boss5[index].amd110.toString(),_boss5[index].ams110.toString(),wi,index,_boss5[index].pic.toString(),_boss5[index].tyc0.toString(),_boss5[index].tyc1.toString(),_boss5[index].atk.toString(),_boss5[index].def.toString(),_boss5[index].nai.toString(),_boss5[index].maxhp.toString(),_boss5[index].cach.toString(),_boss5[index].flee.toString(),_boss5[index].walk.toString(),_boss5[index].cname.toString(),_boss5[index].na.toString(),_boss5[index].at1.toString(),_boss5[index].at2.toString(),_boss5[index].at3.toString(),_boss5[index].at4.toString(),_boss5[index].at5.toString(),_boss5[index].at6.toString(),_boss5[index].at7.toString(),_boss5[index].at8.toString(),_boss5[index].b1.toString(),_boss5[index].b2.toString(),_boss5[index].b3.toString(),_boss5[index].b4.toString(),_boss5[index].b5.toString(),_boss5[index].b6.toString(),_boss5[index].b7.toString(),_boss5[index].b8.toString(),_boss5[index].b9.toString(),_boss5[index].g1.toString(),_boss5[index].g2.toString(),_boss5[index].g3.toString(),_boss5[index].g4.toString(),_boss5[index].g5.toString(),_boss5[index].g6.toString(),_boss5[index].g7.toString(),_boss5[index].g8.toString(),_boss5[index].g9.toString(),_boss5[index].bu11.toString(),_boss5[index].bu12.toString(),_boss5[index].bu13.toString(),_boss5[index].bu14.toString(),_boss5[index].bu15.toString(),_boss5[index].bu16.toString(),_boss5[index].bu21.toString(),_boss5[index].bu22.toString(),_boss5[index].bu23.toString(),_boss5[index].bu24.toString(),_boss5[index].bu25.toString(),_boss5[index].bu26.toString(),_boss5[index].bu31.toString(),_boss5[index].bu32.toString(),_boss5[index].bu33.toString(),_boss5[index].bu34.toString(),_boss5[index].bu35.toString(),_boss5[index].bu36.toString());
                },),)),
            ),
            ),
            Container(decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [Color.fromRGBO(180, 180, 255, 1), Color.fromRGBO(255, 150, 150, 1)]),
                border: Border(bottom: BorderSide(color: Colors.white54))),height: 51,child: Row(children: <Widget>[
              Container(margin: EdgeInsets.only(left: 5),child: Text('ads',style: TextStyle(color: Colors.white),),),
              Expanded(child: Container()),
              Container(margin: EdgeInsets.only(right: 5),child: Text('',style: TextStyle(color: Colors.white),),),
            ],),),
          ],),

        )
    );
  }
  srg(a,b,c,d,e){
    return Expanded(child: InkWell(child: Container(margin: EdgeInsets.all(5),decoration: BoxDecoration(border: Border.all(color: e,width: 2),color: b,borderRadius: BorderRadius.circular(5)),alignment: Alignment.center,child: Text(a,style: TextStyle(color: d,fontWeight: FontWeight.bold),),),
      onTap: (){
        setState(() {
          if(c == '1'){d1=d2=d3=d4=d5=Colors.transparent;d1=Colors.black54;}
          if(c == '2'){d1=d2=d3=d4=d5=Colors.transparent;d2=Colors.black54;}
          if(c == '3'){d1=d2=d3=d4=d5=Colors.transparent;d3=Colors.black54;}
          if(c == '4'){d1=d2=d3=d4=d5=Colors.transparent;d4=Colors.black54;}
          if(c == '5'){d1=d2=d3=d4=d5=Colors.transparent;d5=Colors.black54;}
          if(bb != ""){
            if(bb == c){
              bb = "";
              d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;
            }else{
              bb = c;
            }
          }else if(bb == ""){
            bb = c;
          }
          a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;
          _boss5 = _b5.where((note) {
            var bossname = note.generation.toLowerCase();
            return bossname.contains(bb);
          }).toList();
        });
      },
    ));
  }
  sric(a,b,c){
    return Expanded(child: Container(decoration: BoxDecoration(
//      boxShadow: [
//        BoxShadow(
//          color: Colors.black26,
//          blurRadius: ,
//          offset: Offset(1, 1)
//        )
//      ],
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: c,width: 2)),margin: EdgeInsets.only(left: 3,right: 3),child: InkWell(child: Image.asset(a),onTap: (){
      setState(() {
        if(b == "bug"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;a1=Colors.black;}
        if(b == "dark"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;a2=Colors.black;}
        if(b == "dragon"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;a3=Colors.black;}
        if(b == "electric"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;a4=Colors.black;}
        if(b == "fairy"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;a5=Colors.black;}
        if(b == "fighting"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;a6=Colors.black;}
        if(b == "fire"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;a7=Colors.black;}
        if(b == "flying"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;a8=Colors.black;}
        if(b == "ghost"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;a9=Colors.black;}
        if(b == "grass"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;c1=Colors.black;}
        if(b == "ground"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;c2=Colors.black;}
        if(b == "ice"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;c3=Colors.black;}
        if(b == "normal"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;c4=Colors.black;}
        if(b == "poison"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;c5=Colors.black;}
        if(b == "psychic"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;c6=Colors.black;}
        if(b == "rock"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;c7=Colors.black;}
        if(b == "steel"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;c8=Colors.black;}
        if(b == "water"){d1=d2=d3=d4=d5=a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;c9=Colors.black;}


        if(aa != ""){
          if(aa == b){
            aa = "";
            a1=a2=a3=a4=a5=a6=a7=a8=a9=c1=c2=c3=c4=c5=c6=c7=c8=c9=Colors.transparent;
          }else{
            aa = b;
          }
        }else if(aa == ""){
          aa = b;
        }
        _boss5 = _b5.where((note) {
          var bossname = note.ttyy.toLowerCase();
          return bossname.contains(aa);
        }).toList();
      });
    },),));
  }

  _boss1(maxcp2,maxcp3,maxcp4,am01,amn01,amd01,ams01,am02,amn02,amd02,ams02,am03,amn03,amd03,ams03,am04,amn04,amd04,ams04,am05,amn05,amd05,ams05,am06,amn06,amd06,ams06,am07,amn07,amd07,ams07,am11,amn11,amd11,ams11,am12,amn12,amd12,ams12,am13,amn13,amd13,ams13,am14,amn14,amd14,ams14,am15,amn15,amd15,ams15,am16,amn16,amd16,ams16,am17,amn17,amd17,ams17,am18,amn18,amd18,ams18,am19,amn19,amd19,ams19,am110,amn110,amd110,ams110,wi,index,pic,tyc0,tyc1,atk,def,nai,maxhp,cach,flee,walk,cname,na,at1,at2,at3,at4,at5,at6,at7,at8,b1,b2,b3,b4,b5,b6,b7,b8,b9,g1,g2,g3,g4,g5,g6,g7,g8,g9,bu11,bu12,bu13,bu14,bu15,bu16,bu21,bu22,bu23,bu24,bu25,bu26,bu31,bu32,bu33,bu34,bu35,bu36) {

    return InkWell(child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 5,
              color: Colors.black54,
              offset: Offset(3, 3)
          )
        ],
        borderRadius: BorderRadius.circular(1),
        color: Colors.white,
      ),
      margin: EdgeInsets.all(1/di1),

      child: Column(children: <Widget>[
        Container(
            height: wi*57/70/xxx,
            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(5),
                color: Color.fromRGBO(240, 240, 255, 1),
                image: DecorationImage(image: AssetImage(pic),fit: BoxFit.cover)
            ),
            child: Column(children: <Widget>[
              Expanded(child: Container()),
              Container(margin: EdgeInsets.only(right: 5,bottom: di+2),child: Row(children: <Widget>[
                Expanded(child: Container()),
                Container(color: Colors.white70,margin: EdgeInsets.only(right: di),height: si+1,child: Image.asset(tyc1),),
                Container(color: Colors.white70,margin: EdgeInsets.only(right: di),height: si+1,child: Image.asset(tyc0),),
              ],),)
            ],)
        ),
        Container(height: 1,color: Colors.black38,margin: EdgeInsets.only(left: 5,right: 5),),
        Expanded(child:Container(padding: EdgeInsets.only(right: 0,left: 0),child: Row(children: <Widget>[
          Expanded(child: Container()),
          Container(alignment: Alignment.center,child: Text(na,style: TextStyle(fontSize: si),),),
          Expanded(child: Container()),
//          Container(margin: EdgeInsets.only(right: di),height: si,child: Image.asset(tyc1),),
//          Container(margin: EdgeInsets.only(right: di),height: si,child: Image.asset(tyc0),),
        ],)),),
      ],),
    ),onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return hehe(maxcp2,maxcp3,maxcp4,am01,amn01,amd01,ams01,am02,amn02,amd02,ams02,am03,amn03,amd03,ams03,am04,amn04,amd04,ams04,am05,amn05,amd05,ams05,am06,amn06,amd06,ams06,am07,amn07,amd07,ams07,am11,amn11,amd11,ams11,am12,amn12,amd12,ams12,am13,amn13,amd13,ams13,am14,amn14,amd14,ams14,am15,amn15,amd15,ams15,am16,amn16,amd16,ams16,am17,amn17,amd17,ams17,am18,amn18,amd18,ams18,am19,amn19,amd19,ams19,am110,amn110,amd110,ams110,na,cname,pic,maxhp,atk,def,nai,tyc1,tyc0,b1,b2,b3,b4,b5,b6,b7,b8,b9,g1,g2,g3,g4,g5,g6,g7,g8,g9,at1,at2,at3,at4,at5,at6,at7,at8,cach,flee,walk,bu11,bu12,bu13,bu14,bu15,bu16,bu21,bu22,bu23,bu24,bu25,bu26,bu31,bu32,bu33,bu34,bu35,bu36);
      }));
    },);
  }
  hehe(maxcp2,maxcp3,maxcp4,am01,amn01,amd01,ams01,am02,amn02,amd02,ams02,am03,amn03,amd03,ams03,am04,amn04,amd04,ams04,am05,amn05,amd05,ams05,am06,amn06,amd06,ams06,am07,amn07,amd07,ams07,am11,amn11,amd11,ams11,am12,amn12,amd12,ams12,am13,amn13,amd13,ams13,am14,amn14,amd14,ams14,am15,amn15,amd15,ams15,am16,amn16,amd16,ams16,am17,amn17,amd17,ams17,am18,amn18,amd18,ams18,am19,amn19,amd19,ams19,am110,amn110,amd110,ams110,na,cname,pic,maxhp,atk,def,nai,tyc1,tyc0,b1,b2,b3,b4,b5,b6,b7,b8,b9,g1,g2,g3,g4,g5,g6,g7,g8,g9,at1,at2,at3,at4,at5,at6,at7,at8,cach,flee,walk,bu11,bu12,bu13,bu14,bu15,bu16,bu21,bu22,bu23,bu24,bu25,bu26,bu31,bu32,bu33,bu34,bu35,bu36){
    if(tyc0 == 'lib/images/mbug.png'){bg = 'lib/images/bugbg.png';}
    if(tyc0 == 'lib/images/mdark.png'){bg = 'lib/images/darkbg.png';bgc = Color.fromRGBO(10, 10, 50, 10);}
    if(tyc0 == 'lib/images/mdragon.png'){bg = 'lib/images/dragonbg.png';bgc = Color.fromRGBO(50, 100, 50, 10);}
    if(tyc0 == 'lib/images/melectric.png'){bg = 'lib/images/electricbg.png';}
    if(tyc0 == 'lib/images/mfairy.png'){bg = 'lib/images/fairybg.png';bgc = Color.fromRGBO(140, 100, 255, 10);}
    if(tyc0 == 'lib/images/mfighting.png'){bg = 'lib/images/fightingbg.png';}
    if(tyc0 == 'lib/images/mfire.png'){bg = 'lib/images/firebg.png';}
    if(tyc0 == 'lib/images/mflying.png'){bg = 'lib/images/flyingbg.png';}
    if(tyc0 == 'lib/images/mghost.png'){bg = 'lib/images/ghostbg.png';bgc = Color.fromRGBO(10, 50, 100, 10);}
    if(tyc0 == 'lib/images/mgrass.png'){bg = 'lib/images/grassbg.png';}
    if(tyc0 == 'lib/images/mground.png'){bg = 'lib/images/groundbg.png';}
    if(tyc0 == 'lib/images/mice.png'){bg = 'lib/images/icebg.png';}
    if(tyc0 == 'lib/images/mnormal.png'){bg = 'lib/images/normalbg.png';}
    if(tyc0 == 'lib/images/mpoison.png'){bg = 'lib/images/poisonbg.png';}
    if(tyc0 == 'lib/images/mpsychic.png'){bg = 'lib/images/psychicbg.png';}
    if(tyc0 == 'lib/images/mrock.png'){bg = 'lib/images/rockbg.png';bgc = Color.fromRGBO(100, 100, 130, 50);}
    if(tyc0 == 'lib/images/msteel.png'){bg = 'lib/images/steelbg.png';bgc = Color.fromRGBO(10, 40, 60, 10);}
    if(tyc0 == 'lib/images/mwater.png'){bg = 'lib/images/waterbg.png';}
    return Container(child: Scaffold(appBar: AppBar(
      title: Text(na,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
      flexibleSpace: Container(
        decoration: BoxDecoration(
//          image: DecorationImage(image: AssetImage('lib/images/grassbg.png'),fit: BoxFit.fill)
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [Color.fromRGBO(180, 180, 255, 1), Color.fromRGBO(255, 150, 150, 1)])
        ),
      ),
    ),
      body: Container(decoration: BoxDecoration(color: bgc,image: DecorationImage(alignment: Alignment.topCenter,image: AssetImage(bg),fit: BoxFit.fitWidth)),child: Column(children: <Widget>[
        Expanded(child: Container(child: ListView(children: <Widget>[
          Stack(children: <Widget>[
            Container(child: Column(children: <Widget>[
              Container(height: 175,),
              Container(margin: EdgeInsets.only(left: 5,right: 5),decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black87,blurRadius: 5,offset: Offset(1, 6))],color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10))),child: Column(children: <Widget>[
                Container(height: 35,),
                Container(alignment: Alignment.center,child: Text(na,style: TextStyle(fontSize: 25),),),
                Container(margin: EdgeInsets.only(left: 100,right: 100,top: 5,bottom: 3),height: 5,decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.circular(50)),),
                Container(child: Row(children: <Widget>[
                  Expanded(child: Container()),
                  Container(child: Text('MaxHP'),),
                  Container(margin: EdgeInsets.only(left: 3),child: Text(maxhp),),
                  Expanded(child: Container())
                ],),),
                Container(height: 60,color: Colors.white,margin: EdgeInsets.only(top: 10),child: Row(children: <Widget>[
                  top3(atk, z3),
                  Container(width: 1,margin: EdgeInsets.only(top: 15,bottom: 15),color: Colors.grey,),
                  top3(def, z4),
                  Container(width: 1,margin: EdgeInsets.only(top: 15,bottom: 15),color: Colors.grey,),
                  top3(nai, z5),
                ],),),
                Container(padding: EdgeInsets.only(top: 2,bottom: 2),margin: EdgeInsets.only(top: 18,right: 10,left: 10,bottom: 8),decoration: BoxDecoration(color: Color.fromRGBO(240, 240, 255, 1),border: Border(top: BorderSide(color: Colors.black12,width: 1))),alignment: Alignment.center,width: 1000,child: Text(z6,style: TextStyle(color: Colors.blueGrey)),),

                Container(margin: EdgeInsets.only(left: 10,right: 20),child: Column(children: <Widget>[
                  Container(height: 30,child: Row(children: <Widget>[
                    Container(child: Icon(Icons.arrow_right,color: Colors.blueAccent,size: 20,),),
                    Container(child: Text(z7,style: TextStyle(color: Colors.indigo,fontSize: 18),),),
                    Expanded(child: Container()),
                    Container(height: 26,child: Image.asset(b1),),
                    Container(height: 26,child: Image.asset(b2),),
                    Container(height: 26,child: Image.asset(b3),),
                    Container(height: 26,child: Image.asset(b4),),
                    Container(height: 26,child: Image.asset(b5),),
                    Container(height: 26,child: Image.asset(b6),),
                    Container(height: 26,child: Image.asset(b7),),
                    Container(height: 26,child: Image.asset(b8),),
                    Container(height: 26,child: Image.asset(b9),),
                  ],),),
                  Container(height: 30,child: Row(children: <Widget>[
                    Container(child: Icon(Icons.arrow_right,color: Colors.deepOrangeAccent,size: 20,),),
                    Container(child: Text(z8,style: TextStyle(color: Colors.red,fontSize: 18),),),
                    Expanded(child: Container()),
                    Container(height: 26,child: Image.asset(g1),),
                    Container(height: 26,child: Image.asset(g2),),
                    Container(height: 26,child: Image.asset(g3),),
                    Container(height: 26,child: Image.asset(g4),),
                    Container(height: 26,child: Image.asset(g5),),
                    Container(height: 26,child: Image.asset(g6),),
                    Container(height: 26,child: Image.asset(g7),),
                    Container(height: 26,child: Image.asset(g8),),
                    Container(height: 26,child: Image.asset(g9),),
                  ],),),
                  Container(height: 2,),
                ],),),
                Container(padding: EdgeInsets.only(top: 2,bottom: 2),margin: EdgeInsets.only(top: 18,right: 10,left: 10,bottom: 8),decoration: BoxDecoration(color: Color.fromRGBO(255, 240, 255, 1),border: Border(top: BorderSide(color: Colors.black12,width: 1))),alignment: Alignment.center,width: 1000,child: Text(z21,style: TextStyle(color: Colors.blueGrey)),),
                Container(height: 50,color: Colors.white,margin: EdgeInsets.only(top: 0),child: Row(children: <Widget>[
                  top33(maxcp2, z22),
                  Container(width: 1,margin: EdgeInsets.only(top: 10,bottom: 10),color: Colors.grey,),
                  top33(maxcp3, z23),
                  Container(width: 1,margin: EdgeInsets.only(top: 10,bottom: 10),color: Colors.grey,),
                  top33(maxcp4, z24),
                ],),),
                Container(padding: EdgeInsets.only(top: 2,bottom: 2),margin: EdgeInsets.only(top: 30,right: 10,left: 10,bottom: 10),decoration: BoxDecoration(color: Color.fromRGBO(230, 255, 230, 1),border: Border(top: BorderSide(color: Colors.black12,width: 1))),alignment: Alignment.center,width: 1000,child: Text(z9,style: TextStyle(color: Colors.blueGrey)),),
                Container(margin: EdgeInsets.only(left: 5,right: 5),child: Row(children: <Widget>[
                  top2(z10, at2, at1, at4, at3),
                  Container(width: 5,),
                  top2(z11, at6, at5, at8, at7),
                ],),),
                Container(padding: EdgeInsets.only(top: 2,bottom: 2),margin: EdgeInsets.only(top: 30,right: 10,left: 10,bottom: 10),decoration: BoxDecoration(color: Color.fromRGBO(230, 255, 255, 1),border: Border(top: BorderSide(color: Colors.black12,width: 1))),alignment: Alignment.center,width: 1000,child: Text(z25,style: TextStyle(color: Colors.blueGrey)),),
                Container(child: Column(children: <Widget>[
                  Container(margin: EdgeInsets.only(left: 30,right: 30,bottom: 0,top: 5),child: Row(children: <Widget>[
                    Expanded(flex: 14,child: Container(margin: EdgeInsets.only(left: 5),child: Text(z26,style: TextStyle(fontSize: 15,color: Colors.brown,fontWeight: FontWeight.bold),),),),
                    Expanded(flex: 2,child: Container()),
                    Expanded(flex: 5,child: Container(alignment: Alignment.centerRight,child: Text(z27,style: TextStyle(fontSize: 15,color: Colors.brown,fontWeight: FontWeight.bold),),)),
                    Expanded(flex: 5,child: Container(alignment: Alignment.centerRight,child: Text(z28,style: TextStyle(fontSize: 15,color: Colors.brown,fontWeight: FontWeight.bold)),))
                  ],),),
                  Container(margin: EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),height: 1,color: Colors.grey,),
                  mv(am01, amn01, amd01, ams01),
                  mv(am02, amn02, amd02, ams02),
                  mv(am03, amn03, amd03, ams03),
                  mv(am04, amn04, amd04, ams04),
                  mv(am05, amn05, amd05, ams05),
                  mv(am06, amn06, amd06, ams06),
                  mv(am07, amn07, amd07, ams07),
                  Container(margin: EdgeInsets.only(left: 30,right: 30,bottom: 0,top: 5),child: Row(children: <Widget>[
                    Expanded(flex: 14,child: Container(margin: EdgeInsets.only(left: 5),child: Text(z29,style: TextStyle(fontSize: 15,color: Colors.brown,fontWeight: FontWeight.bold),),),),
                    Expanded(flex: 2,child: Container()),
                    Expanded(flex: 5,child: Container(alignment: Alignment.centerRight,child: Text(z27,style: TextStyle(fontSize: 15,color: Colors.brown,fontWeight: FontWeight.bold),),)),
                    Expanded(flex: 5,child: Container(alignment: Alignment.centerRight,child: Text(z28,style: TextStyle(fontSize: 15,color: Colors.brown,fontWeight: FontWeight.bold)),))
                  ],),),
                  Container(margin: EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),height: 1,color: Colors.grey,),
                  mv(am11, amn11, amd11, ams11),
                  mv(am12, amn12, amd12, ams12),
                  mv(am13, amn13, amd13, ams13),
                  mv(am14, amn14, amd14, ams14),
                  mv(am15, amn15, amd15, ams15),
                  mv(am16, amn16, amd16, ams16),
                  mv(am17, amn17, amd17, ams17),
                  mv(am18, amn18, amd18, ams18),
                  mv(am19, amn19, amd19, ams19),
                  mv(am110, amn110, amd110, ams110),
                  Container(alignment: Alignment.centerLeft,margin: EdgeInsets.only(left: 20),child: Text(z30,style: TextStyle(color: Colors.black54),),)
                ],),),
                Container(padding: EdgeInsets.only(top: 2,bottom: 2),margin: EdgeInsets.only(top: 30,right: 10,left: 10),decoration: BoxDecoration(color: Color.fromRGBO(255, 230, 230, 1),border: Border(top: BorderSide(color: Colors.black12,width: 1))),alignment: Alignment.center,width: 1000,child: Text(z12,style: TextStyle(color: Colors.blueGrey)),),
                Container(child: Row(children: <Widget>[
                  www(bu11,bu12,bu13,bu14,bu15,bu16),
                  www(bu21,bu22,bu23,bu24,bu25,bu26),
                  www(bu31,bu32,bu33,bu34,bu35,bu36),
                ],),),
                Container(margin: EdgeInsets.only(top: 20,bottom: 5,left: 20,right: 20),height: 1,color: Colors.black12,),
                Container(height: 60,color: Colors.white,margin: EdgeInsets.only(top: 0),child: Row(children: <Widget>[
                  top3(cach, z13),
                  Container(width: 1,margin: EdgeInsets.only(top: 15,bottom: 15),color: Colors.grey,),
                  top3(flee, z14),
                  Container(width: 1,margin: EdgeInsets.only(top: 15,bottom: 15),color: Colors.grey,),
                  top3(walk, z15),
                ],),),
                Container(margin: EdgeInsets.only(top: 5,bottom: 5,left: 20,right: 20),height: 1,color: Colors.black12,),
                Container(child: Text(cname,style: TextStyle(color: Colors.grey),),),
                Container(height: 10,),
                Container(height: 65,)
              ],),),


            ],),),
            Positioned(child:Container(child: Column(children: <Widget>[
              Container(height: 17,),
              Container(alignment: Alignment.center,height: 200,child: Image.asset(pic),),
              Container(height: 7,),
              Container(margin: EdgeInsets.only(right: 20),height: 40,child: Row(children: <Widget>[
                Expanded(child: Container(),),
                Container(margin: EdgeInsets.only(top: 5,bottom: 5),child: Image.asset(tyc1),),
                Container(margin: EdgeInsets.only(top: 5,bottom: 5),child: Image.asset(tyc0),),
              ],),)
            ],),))
          ],),

        ],),))
      ],),),
    ),);
  }
  mv(a,b,c,d){
    if(a == ''){
      mh = 0;
    }else{
      mh = 25;
    }
    return Container(margin: EdgeInsets.only(left: 30,right: 30,bottom: 3),height: mh,child: Row(children: <Widget>[
      Expanded(flex: 2,child: Container(margin: EdgeInsets.all(2),child: Image.asset(a),),),
      Expanded(flex: 14,child: Container(margin: EdgeInsets.only(left: 10),child: Text(b,style: TextStyle(fontSize: 15),),),),
      Expanded(flex: 5,child: Container(alignment: Alignment.centerRight,child: Text(c,style: TextStyle(fontSize: 15),),)),
      Expanded(flex: 5,child: Container(alignment: Alignment.centerRight,child: Text(d),))
    ],),);
  }
  top3(a,b){
    return Expanded(child: Container(child: Column(children: <Widget>[
      Expanded(child: Container()),
      Container(child: Text(a,style: TextStyle(fontSize: 20),),),
      Container(child: Text(b,style: TextStyle(fontSize: 12,color: Colors.black54),),),
      Expanded(child: Container()),
    ],),),);
  }
  top33(a,b){
    return Expanded(child: Container(child: Column(children: <Widget>[
      Expanded(child: Container()),
      Container(child: Text(a,style: TextStyle(fontSize: 16,color: Colors.black87),),),
      Container(child: Text(b,style: TextStyle(fontSize: 12,color: Colors.black54),),),
      Expanded(child: Container()),
    ],),),);
  }
  top2(a,b,c,d,e){
    return Expanded(child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all(color: Color.fromRGBO(220, 255, 220, 1),width: 2),),child: Column(children: <Widget>[
      Container(margin: EdgeInsets.only(left: 5),alignment: Alignment.centerLeft,child: Text(a,style: TextStyle(fontSize: 18),),),
      Container(margin: EdgeInsets.only(top: 5),height: 35,child: Row(children: <Widget>[
        Container(height: 23,margin: EdgeInsets.only(left: 5),child: Image.asset(b),),
        Expanded(child: Container()),
        Container(child: Text(c,style: TextStyle(fontSize: 13),),),
        Expanded(child: Container()),
      ],),),
      Container(height: 5,),
      Container(padding: EdgeInsets.only(top: 5,bottom: 5),height: 35,child: Row(children: <Widget>[
        Container(height: 23,margin: EdgeInsets.only(left: 5),child: Image.asset(d),),
        Expanded(child: Container()),
        Container(child: Text(e,style: TextStyle(fontSize: 13),),),
        Expanded(child: Container()),
      ],),),
    ],),));
  }
  www(ab,ac,ad,ae,af,ag){
    return Container(child: Expanded(child: Container(child: Column(children: <Widget>[
      Container(height: 100,child: Image.asset(ab),),
      Container(margin: EdgeInsets.only(left: 3,right: 3),height: 1,color: Colors.black38,),
      Container(child: Text(ac,style: TextStyle(color: Colors.black54,fontSize: 15),),),
      Container(height: 3,),
      Container(margin: EdgeInsets.only(left: 2,right: 2),child: Row(children: <Widget>[
        Expanded(child: Container(height: 18,child: Image.asset(ad),),),
        Expanded(flex: 4,child: Container(alignment: Alignment.center,child: Text(ae,style: TextStyle(fontSize: 13,color: Colors.brown)),)),
      ],),),
      Container(height: 3,),
      Container(margin: EdgeInsets.only(left: 2,right: 2),child: Row(children: <Widget>[
        Expanded(child: Container(height: 18,child: Image.asset(af),),),
        Expanded(flex: 4,child: Container(alignment: Alignment.center,child: Text(ag,style: TextStyle(fontSize: 13,color: Colors.brown),),)),
      ],),),
    ],),)),);
  }

}
