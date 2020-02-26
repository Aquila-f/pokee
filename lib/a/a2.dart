import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class A2 extends StatefulWidget {
  @override
  _A2State createState() => _A2State();
}
class Note {
  String pic,sh,cp,kk;
  Note.fromJson(Map<String, dynamic> json) {
    pic = json['pic'];sh = json['sh'];cp = json['cp'];kk = json['kk'];
  }
}
class _A2State extends State<A2> {
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

  Color d1=Colors.transparent,d2=Colors.transparent,d3=Colors.transparent,d4=Colors.transparent,d5=Colors.transparent;
  String bb = '';
  String xx = 'x3';
  int xxx = 3;
  double si = 15,di = 3,di1 = 1;

  Widget build(BuildContext context) {

    double wi=MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('eggs',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//          actions: <Widget>[
//            Container(margin: EdgeInsets.only(top: 13,bottom: 13,right: 10),width: 60,child: Container(decoration: BoxDecoration(
//                border: Border.all(color: Colors.black12),borderRadius: BorderRadius.circular(20)
//            ),child: InkWell(child: Row(children: <Widget>[
////              Container(margin: EdgeInsets.only(left: 5),child: Container(alignment: Alignment.center,child: Text('Language:',style: TextStyle(color: Colors.black26),),)),
//              Expanded(child: Container(alignment: Alignment.center,child: Text(t1,style: TextStyle(color: Colors.black26,fontSize: 13),),))
//
//            ],),
//            ),),),
//
//          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [Color.fromRGBO(200, 150, 255, 1), Color.fromRGBO(180, 180, 250, 1)])
            ),
          ),
          elevation: 0,
        ),
//        body: GridView.builder(gridDelegate: null, itemBuilder: null)
        body: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(200, 230, 255, 1),
              image: DecorationImage(image: AssetImage('lib/images/fpbg.png'),fit: BoxFit.fitWidth)
          ),
          child: Column(children: <Widget>[
            Container(
                height: 40,
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey,width: 1)),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                        colors: [Color.fromRGBO(200, 150, 255, 1), Color.fromRGBO(180, 180, 250, 1)])
                ),
                padding: EdgeInsets.only(left: 5,right: 5),
//              padding: EdgeInsets.only(left: 15,right: 15,bottom: 5),
                child: Column(children: <Widget>[
                  Container(height: 38,child: Row(children: <Widget>[
                    srg('km2', Colors.redAccent, '0',Colors.black54,d1),
                    srg('km5', Colors.amberAccent, '1',Colors.black54,d2),
                    srg('km7', Colors.greenAccent, '2',Colors.black54,d3),
                    srg('km10', Colors.lightBlueAccent, '3',Colors.black54,d4),
                    InkWell(child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),alignment: Alignment.center,height: 38,padding: EdgeInsets.only(left: 15,right: 10),child: Container(child: Text(xx,style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 17),),),),
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
                    )
                  ],),),
                ],)
            ),
//            ExpansionTile(title: null),
            Expanded(

              child: Container(child: Container(child: GridView.builder(
//            physics: NeverScrollableScrollPhysics(),
                itemCount: _boss5.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: xxx,childAspectRatio: 28/30),
                itemBuilder: (context, index) {
                  return _egg1(wi,index,_boss5[index].pic.toString(),_boss5[index].sh.toString(),_boss5[index].cp.toString(),_boss5[index].kk.toString(),);
                },),)),
            ),
            Container(decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [Color.fromRGBO(200, 150, 255, 1), Color.fromRGBO(180, 180, 250, 1)]),
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
    return Expanded(child: InkWell(child: Container(margin: EdgeInsets.all(3),decoration: BoxDecoration(border: Border.all(color: e,width: 2),color: b,borderRadius: BorderRadius.circular(5)),alignment: Alignment.center,child: Text(a,style: TextStyle(color: d,fontWeight: FontWeight.bold),),),
      onTap: (){
        setState(() {
          if(c == '0'){d1=d2=d3=d4=d5=Colors.transparent;d1=Colors.black54;}
          if(c == '1'){d1=d2=d3=d4=d5=Colors.transparent;d2=Colors.black54;}
          if(c == '2'){d1=d2=d3=d4=d5=Colors.transparent;d3=Colors.black54;}
          if(c == '3'){d1=d2=d3=d4=d5=Colors.transparent;d4=Colors.black54;}
          if(bb != ""){
            if(bb == c){
              bb = "";
              d1=d2=d3=d4=Colors.transparent;
            }else{
              bb = c;
            }
          }else if(bb == ""){
            bb = c;
          }
          _boss5 = _b5.where((note) {
            var bossname = note.kk.toLowerCase();
            return bossname.contains(bb);
          }).toList();
        });
      },
    ));
  }
  _egg1(wi,index,pic,sh,cp,kk){
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
      margin: EdgeInsets.all(1/1),

      child: Column(children: <Widget>[
        Container(
            height: wi*57/70/xxx,
            decoration: BoxDecoration(
//              borderRadius: BorderRadius.circular(5),
                color: Color.fromRGBO(240, 240, 255, 1),
                image: DecorationImage(image: AssetImage(pic),fit: BoxFit.cover)
            ),
            child: Column(children: <Widget>[
              Container(margin: EdgeInsets.only(right: 5,bottom: 2),child: Row(children: <Widget>[
                Container(margin: EdgeInsets.all(3),decoration: BoxDecoration(),height: si*3/2,child: Image.asset(sh),),
                Expanded(child: Container()),
              ],),),
              Expanded(child: Container()),
            ],)
        ),
        Container(height: 1,color: Colors.black38,margin: EdgeInsets.only(left: 5,right: 5),),
        Expanded(child:Container(padding: EdgeInsets.only(right: 0,left: 0),child: Row(children: <Widget>[
          Expanded(child: Container()),
          Container(alignment: Alignment.center,child: Text(cp,style: TextStyle(fontSize: si),),),
          Expanded(child: Container()),
//          Container(margin: EdgeInsets.only(right: di),height: si,child: Image.asset(tyc1),),
//          Container(margin: EdgeInsets.only(right: di),height: si,child: Image.asset(tyc0),),
        ],)),),
      ],),
    ),onTap: (){
    },);
  }
}

