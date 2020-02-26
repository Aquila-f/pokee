import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'a/a2.dart';
import 'a/a3.dart';
import 'a/a4.dart';
import 'a/a5.dart';



void main() => runApp(MaterialApp(

  initialRoute: '/',
  routes: {
    '/': (context){return HomePage();},
//    '/a1':(context){return A1();},
    '/a2':(context){return A2();},
    '/a3':(context){return A3();},
    '/a4':(context){return A4();},
    '/a5':(context){return A5();},
//    '/rank':(context){return Rank();},
//    '/against':(context){return Against();},
//    '/rocket':(context){return Rockst();},
//    '/eggs':(context){return Eggs();},
  },
));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}






class _HomePageState extends State<HomePage> {




  String lan = 'English';
  String a4 = 'Pokemon',a2 = 'Eggs';
  String url = 'https://aquila-f.github.io/pklben/';

//  int Dm = DateTime.now().month;
//  int Dd = DateTime.now().day;
//  int Dh = DateTime.now().hour;
//  int Dmi = DateTime.now().minute;


//  int a = 2;
//  int b = 10;
//  int c = 18;
//  int d = 0;



  icontile(p,w,n){
    return Expanded(child: Container(child:Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top: 30.0,bottom: 7.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 5,
                color: Colors.black38,
                offset: Offset(3, 3)
            )
          ],
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(245, 245, 245, 1),),
        child: InkWell(child: Container(margin: EdgeInsets.all(20.0),child: Image.asset(p,fit: BoxFit.fitWidth,),),
          onTap: (){
            setState(() {
              Navigator.push(context, CupertinoPageRoute(builder: (context){
                return n;
              }));
            });
          },),),
//      Container(color: Colors.blueGrey,height: 0.5,),
      Container(height: 30,child: Text(w,style: TextStyle(color: Colors.brown,fontWeight: FontWeight.bold,fontSize: 17.0),),)
    ],)),);
  }


  Widget _time(){
    int dm = DateTime.now().month;
    int ddd = DateTime.now().day;
    int dh = DateTime.now().hour;
    int dmi = DateTime.now().minute;

    int aa = 47-dmi;
    int bb = 13-dh;
    int cc = 7-ddd;
    int dd = 1-dm;

    cc = cc + dd*30;
    if(aa<0){
      aa+=60;
      bb-=1;
    }
    if(bb<0){
      bb+=24;
      cc-=1;
    }
    if(cc < 0){
      return Text('活動結束');
    }
    return Text('>'+cc.toString()+'days'+bb.toString()+'hour'+aa.toString()+'min');
  }

  Widget build(BuildContext context) {
    FirebaseAdMob.instance.initialize(appId: "ca-app-pub-1263869419071726~1261122964").then((response){
      myBanner..load()..show(
//        anchorOffset: 70,
        anchorType: AnchorType.bottom,
      );
    });



    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pookee',style: TextStyle(color: Color.fromRGBO(1, 1, 1, 70),fontWeight: FontWeight.bold),),
          actions: <Widget>[
            Container(margin: EdgeInsets.only(top: 13,bottom: 13,right: 10),width: 80,child: Container(decoration: BoxDecoration(
//                border: Border.all(color: Colors.black12),borderRadius: BorderRadius.circular(20)
            ),child: InkWell(child: Row(children: <Widget>[
//              Container(margin: EdgeInsets.only(left: 5),child: Container(alignment: Alignment.center,child: Text('Language:',style: TextStyle(color: Colors.black26),),)),
              Expanded(child: Container(alignment: Alignment.center,child: Text('Language :',style: TextStyle(color: Color.fromRGBO(1 , 1, 1, 100),fontSize: 15),),))

            ],),
            ),),),
            Container(margin: EdgeInsets.only(top: 10,bottom: 10,right: 10),width: 70,child: Container(decoration: BoxDecoration(
                border: Border.all(color: Colors.white54),color: Colors.white10,borderRadius: BorderRadius.circular(5)
            ),child: InkWell(child: Row(children: <Widget>[
//              Container(margin: EdgeInsets.only(left: 5),child: Container(alignment: Alignment.center,child: Text('Language:',style: TextStyle(color: Colors.black26),),)),
              Expanded(child: Container(alignment: Alignment.center,child: Text(lan,style: TextStyle(color: Colors.white),),)),
//              InkWell(child: Container(child: Icon(Icons.),),)
            ],),
              onTap: (){
                return showDialog(context: context,barrierDismissible: true,
                    builder: (BuildContext context){
                      return AlertDialog(
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              Container(child: Column(children: <Widget>[
                                lang('lib/images/jp.png', '日本語', ''),
                                Container(height: 20,),
                                lang('lib/images/us.png', 'English', ''),
                                Container(height: 20,),
                                lang('lib/images/tw.png', '中文', '')

                              ],),),
                            ],
                          ),
                        ),
                      );
                    }
                );
              },
            ),),),

          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color.fromRGBO(180, 255, 180, 1), Color.fromRGBO(255, 150, 150, 1)])
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(200, 230, 255, 1),
              image: DecorationImage(image: AssetImage('lib/images/fpbg.png'),fit: BoxFit.fitWidth)
          ),
          child:Column(children: <Widget>[

            Container(child: Row(children: <Widget>[
              Container(width: 30,),
              icontile('lib/images/pb.png',a4,A4(url: url,)),
              Container(width: 30,),
              icontile('lib/images/egg.png',a2,A2()),
              Container(width: 30,),


            ],),),
            Container(child: Row(children: <Widget>[
              Container(width: 30,),
              icontile('lib/images/pb.png',a2,A3()),
              Container(width: 30,),
              icontile('lib/images/p91.png',a2,A5()),
              Container(width: 30,),
            ],),),
//            Text('>'+D+'days'+bb.toString()+'hour'+aa.toString()+'min')

            FlatButton(onPressed: (){setState(() {
//              int aa = d-Dmi;
//              int bb = c-Dh;
//              int cc = b-Dd;
//              int dd = a-Dm;
//
//              cc = cc + dd*30;
//              if(aa<0){
//                aa+=60;
//                bb-=1;
//              }
//              if(bb<0){
//                bb+=24;
//                cc-=1;
//              }

            });}, child: _time(),),

            Expanded(flex: 5,child: Container()),
            Text('Coming soon...'),
            Expanded(flex: 2,child: Container()),
            Container(child: Text('2019 © Aquila-w. All rights reserved by their respective owners.',style: TextStyle(fontSize: 10,color: Colors.black),),),
            Expanded(flex: 1,child: Container()),
            Container(margin: EdgeInsets.only(left: 10,right: 10,bottom: 5),child: Text('This application is not officially affiliated with Pokémon GO and is intended to fall under Fair Use doctrine, similar to any other informational site such as a wiki.Pokémon and its trademarks are ©1995-2018 Nintendo, Creatures, and GAMEFREAK.All images and names owned and trademarked by Nintendo, Niantic, The Pokémon Company, and GAMEFREAK are property of their respective owners.',style: TextStyle(fontSize: 8,color: Colors.black54),),),
            Container(decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color.fromRGBO(180, 255, 180, 1), Color.fromRGBO(255, 150, 150, 1)]),
                border: Border(bottom: BorderSide(color: Colors.white54))),height: 51,child: Row(children: <Widget>[
              Container(margin: EdgeInsets.only(left: 5),child: Text('ads',style: TextStyle(color: Colors.white),),),
              Expanded(child: Container()),
              Container(margin: EdgeInsets.only(right: 5),child: Text('',style: TextStyle(color: Colors.white),),),
            ],),),

          ],
          ),),
      ),
    );
  }

  lang(a,b,c){
    return InkWell(child: Container(height: 35,child: Row(children: <Widget>[
      Container(margin: EdgeInsets.only(left: 10),alignment: Alignment.center,decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black26,offset: Offset(0, 0),blurRadius: 5)],image: DecorationImage(image: AssetImage(a),fit: BoxFit.fill),borderRadius: BorderRadius.circular(5),color: Colors.black26),height: 23,width: 33,),
      Expanded(child: Container(alignment: Alignment.center,child: Text(b),))
    ],),),
      onTap: (){
        setState(() {
          Navigator.pop(context);
          lan = b;
          if(lan == '中文'){
            a4 = '圖鑑';
            a2 = '蛋';
            url = 'https://aquila-f.github.io/g5pklb/';
          }else if(lan == 'English'){
            a4 = 'Pokemon';
            a2 = 'Eggs';
            url = 'https://aquila-f.github.io/pklben/';
          }else if(lan == '日本語'){
            a4 = '図鑑';
            a2 = 'Eggs';
            url = 'https://aquila-f.github.io/pklbjp/';
          }
        });
      },
    );
  }

}
MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  keywords: <String>['Games', 'PubgM'],
  contentUrl: 'https://flutter.io',
  childDirected: false,
  testDevices: <String>[], // Android emulators are considered test devices
);

BannerAd myBanner = BannerAd(
  adUnitId: "ca-app-pub-1263869419071726/1013710958",
  size: AdSize.banner,
  targetingInfo: targetingInfo,
  listener: (MobileAdEvent event) {
    print("BannerAd event is $event");
  },
);



//@override
//void initState() {
//  super.initState();
//  _everySecond = Timer.periodic(Duration(minutes: 1), (Timer t) {
//    setState(() {
//    });
//  });}
//
//Widget _Time(){
//  int dm = DateTime.now().month;
//  int ddd = DateTime.now().day;
//  int dh = DateTime.now().hour;
//  int dmi = DateTime.now().minute;
//
//  int aa = 47-dmi;
//  int bb = 12-dh;
//  int cc = 9-ddd;
//  int dd = 1-dm;
//
//  cc = cc + dd*30;
//  if(aa<0){
//    aa+=60;
//    bb-=1;
//  }
//  if(bb<0){
//    bb+=24;
//    cc-=1;
//  }
//  if(cc < 0){
//    return Text('活動結束');
//  }
//  return Text('>'+cc.toString()+'days'+bb.toString()+'hour'+aa.toString()+'min');
//}