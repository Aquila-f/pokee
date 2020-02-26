import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
//import 'package:cached_network_image/cached_network_image.dart';
//import 'package:cached_network_image/cached_network_image.dart';
//import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class A5 extends StatefulWidget {
  @override
  _A5State createState() => _A5State();
}


class Note {
  final int id;
  final String name;
  final List<Imaged> context;

  Note({this.id, this.name,
    this.context
  });

  factory Note.fromJson(Map<String, dynamic> parsedJson){

    var list = parsedJson['context'] as List;
    print(list.runtimeType);
    List<Imaged> imagesList = list.map((i) => Imaged.fromJson(i)).toList();


    return Note(
        id: parsedJson['id'],
        name: parsedJson['name'],
        context: imagesList

    );
  }
}

class Imaged {
  final int imageId;
  final String imageName;
  final String title;
  final int endm,endd,endh,endmi;
  final int sndm,sndd,sndh,sndmi;
  final String c1,c2,c3,c4,c5,c6,c7;
  final String suppic;

  Imaged({this.imageId, this.imageName,this.title,this.endd,this.endh,this.endm,this.endmi,this.c1,this.c2,this.c3,this.c4,this.c5,this.c6,this.c7,this.sndd,this.sndh,this.sndm,this.sndmi,this.suppic});

  factory Imaged.fromJson(Map<String, dynamic> parsedJson){
    return Imaged(
        imageId:parsedJson['id'],
        imageName:parsedJson['imageName'],
        title: parsedJson['title'],
        endm: parsedJson['EtimeM'],
        endd: parsedJson['EtimeD'],
        endh: parsedJson['EtimeH'],
        endmi: parsedJson['EtimeMI'],
        sndm: parsedJson['StimeM'],
        sndd: parsedJson['StimeD'],
        sndh: parsedJson['StimeH'],
        sndmi: parsedJson['StimeMI'],
        suppic: parsedJson['suppic'],
        c1: parsedJson['context1'],c2: parsedJson['context2'],c3: parsedJson['context3'],c4: parsedJson['context4'],c5: parsedJson['context5'],c6: parsedJson['context6'],c7: parsedJson['context7']


    );
  }
}


class _A5State extends State<A5> {

  List<Imaged> _sm ;

  List<Note> _b5 = List<Note>();
  List<Note> _boss5 = List<Note>();

  Future<List<Note>> bs5Notes() async {
//    var url = 'https://aquila-f.github.io/peg/';
    var url = 'https://aquila-f.github.io/pke/';
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


  Timer _everySecond;

  @override
  void initState() {
    bs5Notes().then((value) {
      setState(() {
        _b5.addAll(value);
        _boss5 = _b5;
      });
    });
    _everySecond = Timer.periodic(Duration(minutes: 1), (Timer t) {
      setState(() {
      });
    });
    super.initState();
  }


  Widget build(BuildContext context) {

    return Scaffold(
        appBar: PreferredSize(child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color.fromRGBO(130, 200, 255, 1), Color.fromRGBO(150, 255, 180, 1)])
            ),
          ),
          title: Text('公告'),), preferredSize: Size.fromHeight(45.0)),
        body: Container(

          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(image: AssetImage('lib/images/loadingg.gif'),fit: BoxFit.fitWidth)
          ),
          child: Column(children: <Widget>[
//            Container(height: 9,),
//            Text(DateTime.now().month.toString()+'月'+DateTime.now().day.toString()+'日'+DateTime.now().hour.toString()+'點'+DateTime.now().minute.toString()+'分'),
//            Expanded(child: Text('a')),
            Expanded(child: ListView.builder(
                itemCount: _boss5.length,
                itemBuilder: (context, index){
                  return _nevent(_boss5[index].name,_boss5[index].id,_boss5[index].context);
                }
            ),)
          ],),
        )
    );
  }

  Widget _nevent(title,con,img){
    Color cco;
    if(con == 1){
      cco = Color.fromRGBO(160, 200, 255, 1);
    }if(con == 2){
      cco = Color.fromRGBO(180, 230, 180, 1);
    }
    _sm = img;
//    double hei = ;
    return Container(
        margin: EdgeInsets.only(left: 3,right: 3,bottom: 60,top: 9),
//      padding: EdgeInsets.only(),
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white
//        color: Color.fromRGBO(160, 200, 255, 1),
      ),
      height:  _sm.length.toDouble()*151+120,

      child: Column(children: <Widget>[
        Container(
          color: Colors.white,
//          decoration: BoxDecoration(
//              color: Color.fromRGBO(160, 200, 255, 1),
//              borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15))),
          padding: EdgeInsets.only(bottom: 0),

          alignment: Alignment.centerLeft,
          child: Row(children: <Widget>[
            Container(
              height: 33,
              padding: EdgeInsets.only(left: 60,right: 60,top: 3),
              decoration: BoxDecoration(
                  color: cco,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12))),
                child: Text('活動列表',style: TextStyle(fontFamily: "NotoSansTC",color: Colors.white,fontSize: 21,fontWeight: FontWeight.w600)),),

            Expanded(child: Container(
              height: 33,
              color: cco,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12))),
              ),
            ))
    ],),),
//        Container(height: 5,),
        Expanded(
          child:Container(
            padding: EdgeInsets.only(top: 3),
              decoration: BoxDecoration(
                  color: cco,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(12),bottomLeft: Radius.circular(12),bottomRight: Radius.circular(12))),
              child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: _sm.length,
              itemBuilder: (context,index){
                return _toplist(_sm[index].imageId.toString(),_sm[index].imageName,_sm[index].title,_sm[index].endm,_sm[index].endd,_sm[index].endh,_sm[index].endmi,_sm[index].sndm,_sm[index].sndd,_sm[index].sndh,_sm[index].sndmi,_sm[index].c1,_sm[index].c2,_sm[index].c3,_sm[index].c4,_sm[index].c5,_sm[index].c6,_sm[index].c7,_sm[index].suppic);
              }
          ))
          )

      ],)
    );
  }


  Widget _toplist(id,pic,titlee,em,ed,eh,emi,sm,sd,sh,smi,c1,c2,c3,c4,c5,c6,c7,supp){
    Widget _popo(){
      int dm = DateTime.now().month;
      int ddd = DateTime.now().day;
      int dh = DateTime.now().hour;
      int dmi = DateTime.now().minute;

      int saa = smi-dmi;
      int sbb = sh-dh;
      int scc = sd-ddd;
      int sdd = sm-dm;

      scc = scc + sdd*30;
      if(saa<0){
        saa+=60;
        sbb-=1;
      }
      if(sbb<0){
        sbb+=24;
        scc-=1;
      }
      String min = saa.toString();
      String hr = sbb.toString();

      if(scc>0){
        return Container(
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(children: <Widget>[
              Expanded(child: Column(children: <Widget>[
                Expanded(child: Container()),
                Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 6),
                    padding: EdgeInsets.only(left: 6,right: 6),
//                    width: 100,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(150, 180, 180, 1),
                        boxShadow: [BoxShadow(blurRadius: 2,color: Colors.black54,offset: Offset(2,2))],
                        borderRadius: BorderRadius.only(topRight: Radius.circular(6),bottomRight: Radius.circular(6))
                    ),
                    child: Text('暫未開放',style: TextStyle(color: Colors.white,fontFamily: "NotoSansTC",fontWeight: FontWeight.bold),),),
                ],),
                Expanded(child: Container()),

              ],)),
              Container(child: Text(scc.toString()+'天'+hr+'小時'+min+'分',style: TextStyle(color: Colors.white,fontFamily: "NotoSansTC",fontWeight: FontWeight.bold,fontSize: 18),),),
              Expanded(child: Container())
            ],));
      }


      Widget _time(){

        int aa = emi-dmi;
        int bb = eh-dh;
        int cc = ed-ddd;
        int dd = em-dm;
        cc = cc + dd*30;

//      int ssm = sm-dmi;
//      int ssd = sd-ddd;
//      int ssh = sh-dh;
//      int ssmi = smi-dmi;

        if(aa<0){
          aa+=60;
          bb-=1;
        }
        if(bb<0){
          bb+=24;
          cc-=1;
        }
        if(cc > 0){
          cc+=1;
          return Container(child: Column(children: <Widget>[
            Expanded(child: Container()),
            Container(margin: EdgeInsets.only(left: 9),alignment: Alignment.bottomCenter,child: Text('倒數',style: TextStyle(fontSize: 12,fontFamily: "NotoSansTC"),),),
            Row(children: <Widget>[
              Expanded(child: Container()),
              Text(cc.toString(),style: TextStyle(color: Colors.red,fontSize: 27,fontWeight: FontWeight.bold,fontFamily: "NotoSansTC"),),
              Expanded(child: Container(height: 27,alignment: Alignment.bottomCenter,child: Text('天',style: TextStyle(fontSize: 9,fontFamily: "NotoSansTC"),),),)

            ],),Expanded(child: Container()),],),);
        }
        if(cc == 0){
          if(bb > 0){
            bb+=1;
            return Container(child: Column(children: <Widget>[
              Expanded(child: Container()),
              Container(margin: EdgeInsets.only(left: 9),alignment: Alignment.bottomCenter,child: Text('倒數',style: TextStyle(fontSize: 12,fontFamily: "NotoSansTC"),),),
              Row(children: <Widget>[
                Expanded(child: Container()),
                Text(bb.toString(),style: TextStyle(color: Colors.red,fontSize: 27,fontWeight: FontWeight.bold,fontFamily: "NotoSansTC"),),
                Expanded(child: Container(height: 27,alignment: Alignment.bottomCenter,child: Text('小時',style: TextStyle(fontSize: 9,fontFamily: "NotoSansTC"),),),)

              ],),Expanded(child: Container()),],),);
          }else{
            return Container(child: Column(children: <Widget>[
              Expanded(child: Container()),
              Container(margin: EdgeInsets.only(left: 9),alignment: Alignment.bottomCenter,child: Text('倒數',style: TextStyle(fontSize: 12,fontFamily: "NotoSansTC"),),),
              Row(children: <Widget>[
                Expanded(child: Container()),
                Text(aa.toString(),style: TextStyle(color: Colors.red,fontSize: 27,fontWeight: FontWeight.bold,fontFamily: "NotoSansTC"),),
                Expanded(child: Container(height: 27,alignment: Alignment.bottomCenter,child: Text('分鐘',style: TextStyle(fontSize: 9,fontFamily: "NotoSansTC"),),),)

              ],),Expanded(child: Container()),],),);
          }
        }
        if(cc < 0){
          return Container(child: Column(children: <Widget>[
            Expanded(child: Container()),
            Container(height: 5,),
            Text('活動結束',style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold,fontFamily: "NotoSansTC"),),
            Expanded(child: Container()),],),);
        }

        return Text('活動結束');
      }


      return Container(
        child: Column(children: <Widget>[
          Expanded(child: Container()),
          Row(children: <Widget>[
            Expanded(child: Container()),
            Container(height: 75,width: 75,
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                      blurRadius: 5,
                      color: Colors.amber
                  )],
//                  border: Border(left: BorderSide(color: Colors.amber,width: 10),top: BorderSide(color: Colors.amber,width: 10)),
                  border: Border.all(color: Colors.yellow[600],width: 3),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(24),bottomLeft: Radius.circular(24),topRight: Radius.circular(24)),
                  color: Colors.white
              ),
//              child: Column(children: <Widget>[
//                Center(child: _time(),)
//              ],),
              child: Center(child: _time(),),
            )
          ],)
        ],),);
    }

    return Container(decoration: BoxDecoration(),margin: EdgeInsets.only(bottom: 7,right: 9,left: 9,top: 7),height: 151,
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return _natpage(pic,titlee,em,ed,eh,emi,sm,sd,sh,smi,c1,c2,c3,c4,c5,c6,c7,supp);
            }));
          },
        child: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(image: NetworkImage(pic),fit: BoxFit.cover),
              boxShadow: [BoxShadow(color: Colors.black38,blurRadius: 5)]
          ),height: 151,child: Column(children: <Widget>[
            Expanded(child: Container()),
            Container(height: 15,),
            Expanded(child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),bottomRight: Radius.circular(24)),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.transparent, Colors.black45]),
              ),
              child: Row(children: <Widget>[
                Expanded(child: Center(child:Text(titlee,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontFamily: "NotoSansTC",fontSize: 18),),)),
                Container(width: 90,)
              ],)
            )),
        ],)),
//      Expanded(child: Text(id.toString()),),
//      Expanded(flex: 2,child: Text(id.toString()),),
//      Text(pic)

      Positioned(child:_popo()

      )
    ],))
    );
  }


  Widget _natpage (pic,titlee,em,ed,eh,emi,sm,sd,sh,smi,c1,c2,c3,c4,c5,c6,c7,supp){

    return Container(
      child: Scaffold(
        appBar: PreferredSize(child: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color.fromRGBO(130, 200, 255, 1), Color.fromRGBO(150, 255, 180, 1)])
          ),
        ),
        title: Text('公告'),), preferredSize: Size.fromHeight(45.0)),
      
      
      body: Container(
        color: Colors.white,
        child: ListView(children: <Widget>[
          Container(margin: EdgeInsets.only(left: 15,right: 15,top: 12),child: Text(titlee,style: TextStyle(fontSize: 24,fontFamily: "NotoSansTC",fontWeight: FontWeight.normal),),),
          Container(margin: EdgeInsets.all(15),child: Column(children: <Widget>[
            Row(children: <Widget>[
              Text("活動開始 : "+sm.toString()+'月'+sd.toString()+'日'+sh.toString()+':0'+smi.toString(),style: TextStyle(fontFamily: "NotoSansTC",color: Colors.grey,fontSize: 12),),

            ],),
            Row(children: <Widget>[
              Text("活動結束 : "+em.toString()+'月'+ed.toString()+'日'+eh.toString()+':0'+emi.toString(),style: TextStyle(fontFamily: "NotoSansTC",color: Colors.grey,fontSize: 12),),

            ],)
          ],),),
          Container(height: 180,child: Image.network(pic,fit: BoxFit.cover,),),
          Container(
            padding: EdgeInsets.only(bottom: 12),
            margin: EdgeInsets.only(bottom: 100,left: 3,right: 3,top: 9),
//            padding: EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(blurRadius: 2,color: Colors.black54)],
              color: Color.fromRGBO(210, 220, 230, 1),
              borderRadius: BorderRadius.circular(20)
            ),

            child: Column(children: <Widget>[
              Container(margin: EdgeInsets.only(top: 6,bottom: 6),child: Text('活動詳情',style: TextStyle(fontSize: 18,fontFamily: "NotoSansTC",color: Colors.white),),),
              Container(margin: EdgeInsets.only(bottom: 12),height: 1.5,color: Colors.white,),
              _contt(c1),
              _contt(c2),
              _contt(c3),
              _contt(c4),
              _contt(c5),
              _contt(c6),
              _contt(c7),

//              Image.network('https://ak6.picdn.net/shutterstock/videos/1027713866/thumb/10.jpg'),
//              Container(margin: EdgeInsets.only(top: 12,bottom: 6),child: CachedNetworkImage(imageUrl : supp,placeholder: (context, url) => CircularProgressIndicator(),),),
              Container(margin: EdgeInsets.only(bottom: 6),height: 1.5,color: Colors.white,),
              Text('更多詳細內容請見 > 文章區域',style: TextStyle(color: Colors.redAccent),)
          ],),)
      ],),),
      ),);
  }
  Widget _contt(a){
    if(a != ""){
      return Container(
        child:Stack(children: <Widget>[
          Row(children: <Widget>[
            Container(width: 21,),
            Expanded(child: Text(a,style: TextStyle(fontFamily: "NotoSansTC",color: Colors.black,fontSize: 15),)),

          ],),
          Positioned(child: Container(height: 23.4,child: Icon(Icons.arrow_right,size: 18,color: Colors.black54,),))
        ],),
        margin: EdgeInsets.only(right: 9,left: 9,bottom: 6),
      );
    }
    return Container(height: 0,);
  }

}

