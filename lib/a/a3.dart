import 'package:flutter/material.dart';
import '../model/datapost.dart';
//import '../model/fire.dart';


class A3 extends StatefulWidget {
  @override
  _A3State createState() => _A3State();

}



class _A3State extends State<A3> {
  int _sortColumnIndex ;
  bool _sortAscending = true;
  
  String tytitle = "lib/images/Bug.png";
  String tych = "蟲";
  double tyh = 60;
  Color tytextcl = Color.fromRGBO(163, 199, 56, 1);
  var tyselectedicon = Icons.keyboard_arrow_down;

  var aaa = mlbug;
  Color col1 = Colors.black87;
  Color col2 = Colors.black87;
  Color col3 = Colors.black87;
  Color col4 = Colors.black87;
  Color col5 = Colors.black87;

  FontWeight wei1 = FontWeight.normal;
  FontWeight wei2 = FontWeight.normal;
  FontWeight wei3 = FontWeight.normal;
  FontWeight wei4 = FontWeight.normal;
  FontWeight wei5 = FontWeight.normal;



//  void _sort<T>(Comparable<T> getField(),int index,bool b){
//    possts._sort(getField, b);
//    setState(() {
//      this._sortColumnIndex=index;
//      this._sortAscending=b;
//    });
//  }

  @override
  Widget build(BuildContext context) {
//    Color testcl = Colors.black;
    var testnum = 0;

//    aaa = possts;
    return Scaffold(
      appBar: AppBar(
        title: Text('各系排行'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
//          image: DecorationImage(image: AssetImage('lib/images/grassbg.png'),fit: BoxFit.fill)
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blueGrey, Color.fromRGBO(255, 255, 255, 150)])
          ),
        ),
      ),
      body: Container(
//                padding: EdgeInsets.only(left: 7,right: 5,top: 10),
        child: ListView(
          padding: EdgeInsets.only(left: 5,right: 5,top: 10),
          children: <Widget>[
            AnimatedContainer(
                padding: EdgeInsets.all(5),
//                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 3,
                        offset: Offset(2, 2)
                      )
                    ]
                ),
                curve: Curves.easeInOutCubic,
              duration: Duration(microseconds: 400000),
              height: tyh,
//              duration: ,
              child: Column(children: <Widget>[
                Container(height: 50,

                  child: Row(children: <Widget>[
//                  AnimatedSwitcher(duration: Duration(milliseconds: 1300),child: Image.asset(tytitle,fit: BoxFit.fitHeight,key: ValueKey(tytitle),),),
                  Container(margin: EdgeInsets.only(left: 10,right: 5,top: 4,bottom: 4),child: AnimatedSwitcher(duration: Duration(milliseconds: 1000),child: Image.asset(tytitle,fit: BoxFit.fitHeight,key: ValueKey(tytitle),),),),
                  Container(width: 90,padding: EdgeInsets.only(left: 5,right: 8),child: AnimatedSwitcher(duration: Duration(milliseconds: 1000),child: Text(tych,style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: tytextcl),key: ValueKey(tych),),)),
                  Container(child: Text('屬系排行',style: TextStyle(fontSize: 15),),),
                  Expanded(child: Container()),
                  InkWell(child: Container(margin: EdgeInsets.only(right: 13),child: AnimatedSwitcher(duration: Duration(milliseconds: 200),child: Icon(tyselectedicon,key: ValueKey(tyselectedicon),),)),onTap: (){
                    if(tyh == 60){
                      setState(() {
                        tyselectedicon = Icons.keyboard_arrow_up;
                        tyh = 145;
                      });
                    }else if(tyh == 145){
                      setState(() {
                        tyselectedicon = Icons.keyboard_arrow_down;
                        tyh = 60;
                      });
                    }
                  },)
                ],),),

                Expanded(child: Container(margin: EdgeInsets.only(top: 9),child: Row(children: <Widget>[
                  seleety('lib/images/Bug.png', mlbug, '蟲',Color.fromRGBO(163, 199, 56, 1)),
                  seleety('lib/images/Dark.png', mldark, '惡',Color.fromRGBO(96, 93, 111, 1)),
                  seleety('lib/images/Dragon.png', mldragon, '龍',Color.fromRGBO(0, 113, 191, 1)),
                  seleety('lib/images/Electric.png', mlelectric, '電',Color.fromRGBO(246, 217, 84, 1)),
                  seleety('lib/images/Fairy.png', mlfairy, '妖精',Color.fromRGBO(242, 181, 233, 1)),
                  seleety('lib/images/Fighting.png', mlfighting, '格鬥',Color.fromRGBO(218, 66, 90, 1)),
                  seleety('lib/images/Fire.png', mlfire, '火',Color.fromRGBO(255, 166, 78, 1)),
                  seleety('lib/images/Flying.png', mlflying, '飛行',Color.fromRGBO(153, 179, 228, 1)),
                  seleety('lib/images/Ghost.png', mlghost, '幽靈',Color.fromRGBO(103, 110, 194, 1)),
                ],),)),
                Expanded(child: Container(margin: EdgeInsets.only(top: 9),child: Row(children: <Widget>[
                  seleety('lib/images/Grass.png', mlgrass, '草',Color.fromRGBO(93, 189, 98, 1)),
                  seleety('lib/images/Ground.png', mlground, '地面',Color.fromRGBO(216, 136, 90, 1)),
                  seleety('lib/images/Ice.png', mlice, '冰',Color.fromRGBO(125, 211, 200, 1)),
                  seleety('lib/images/Normal.png', mlnormal, '一般',Color.fromRGBO(153, 158, 160, 1)),
                  seleety('lib/images/Poison.png', mlpoison, '毒',Color.fromRGBO(182, 99, 200, 1)),
                  seleety('lib/images/Psychic.png', mlpsychic, '超能力',Color.fromRGBO(251, 135, 133, 1)),
                  seleety('lib/images/Rock.png', mlrock, '岩石',Color.fromRGBO(205, 191, 142, 1)),
                  seleety('lib/images/Steel.png', mlsteel, '鋼',Color.fromRGBO(85, 155, 164, 1)),
                  seleety('lib/images/Water.png', mlwater, '水',Color.fromRGBO(96, 172, 221, 1)),
                ],),)),
//                Expanded(child: Container())
              ],)),
            Container(margin: EdgeInsets.only(top: 9,bottom: 0,right: 3),alignment: Alignment.centerRight,child: Text('* 點擊列表上方可進行排列',style: TextStyle(color: Colors.brown,fontSize: 11.5),),),

            DataTable(

              horizontalMargin: 5,

              columnSpacing: 0,
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              columns: [
                DataColumn(
                  label: Text('#'),
                ),
//                DataColumn(
//                  label: Text(''),
//                ),
                DataColumn(
                  label: Text('POKÉMON'),
                ),
                DataColumn(
                  label: Text('攻擊'),
                  onSort: (int columnindex , bool ascending){
//
                    setState(() {
                      _sortColumnIndex = columnindex;
                      _sortAscending = ascending;
                      col1 = Colors.blueGrey;
                      wei1 = FontWeight.bold;
                      col2 = col3 = col4 = col5 = Colors.black87;
                      wei2 = wei3 = wei4 = wei5 = FontWeight.normal;


                      aaa.sort((b, a){
                        if(!ascending){
                          final
                          c = a; a = b; b = c;
                        }
//                      return a.atk.compareTo(b.atk);
                        return Comparable.compare(a.atk, b.atk);
                      });
                    });
                  },
                ),
                DataColumn(
                  label: Text('防禦'),
                  onSort: (int columnindex , bool ascending){
//
                    setState(() {
                      _sortColumnIndex = columnindex;
                      _sortAscending = ascending;
                      col2 = Colors.blueGrey;
                      wei2 = FontWeight.bold;
                      col1 = col3 = col4 = col5 = Colors.black87;
                      wei1 = wei3 = wei4 = wei5 = FontWeight.normal;

                      aaa.sort((b, a){
                        if(!ascending){
                          final
                          c = a; a = b; b = c;
                        }
//                      return a.atk.compareTo(b.atk);
                        return Comparable.compare(a.def, b.def);
                      });
                    });
                  },
                ),
                DataColumn(
                  label: Text('耐力'),
                  onSort: (int columnindex , bool ascending){
//
                    setState(() {
                      _sortColumnIndex = columnindex;
                      _sortAscending = ascending;
                      col3 = Colors.blueGrey;
                      wei3 = FontWeight.bold;
                      col2 = col1 = col4 = col5 = Colors.black87;
                      wei2 = wei1 = wei4 = wei5 = FontWeight.normal;

                      aaa.sort((b, a){
                        if(!ascending){
                          final
                          c = a; a = b; b = c;
                        }
//                      return a.atk.compareTo(b.atk);
                        return Comparable.compare(a.nai, b.nai);
                      });
                    });
                  },
                ),
                DataColumn(
                  label: Text('HP'),
                  onSort: (int columnindex , bool ascending){
//
                    setState(() {
                      _sortColumnIndex = columnindex;
                      _sortAscending = ascending;
                      col4 = Colors.blueGrey;
                      wei4 = FontWeight.bold;
                      col2 = col3 = col1 = col5 = Colors.black87;
                      wei2 = wei3 = wei1 = wei5 = FontWeight.normal;

                      aaa.sort((b, a){
                        if(!ascending){
                          final
                          c = a; a = b; b = c;
                        }
//                      return a.atk.compareTo(b.atk);
                        return Comparable.compare(a.maxhp, b.maxhp);
                      });
                    });
                  },
                ),
                DataColumn(
                  label: Text('CP'),

                  onSort: (int columnindex , bool ascending){
//
                    setState(() {
                      _sortColumnIndex = columnindex;
                      _sortAscending = ascending;
                      col5 = Colors.blueGrey;
                      wei5 = FontWeight.bold;
                      col2 = col3 = col4 = col1 = Colors.black87;
                      wei2 = wei3 = wei4 = wei1 = FontWeight.normal;

                      aaa.sort((b, a){
                        if(!ascending){
                          final
                          c = a; a = b; b = c;
                        }
//                      return a.atk.compareTo(b.atk);
                        return Comparable.compare(a.maxcp4, b.maxcp4);
                      });
                    });
                  },
                ),
              ],
                rows: aaa.map((post){
                  testnum = testnum+1;
              return DataRow(
                  cells: [
//                    DataCell(Container(
////                      color: Colors.brown,
//                        child:Text(testnum.toString()),
////                      width: ,
//                    ),),
                    DataCell(Container(
//                        decoration: BoxDecoration(
//                            image: DecorationImage(image: AssetImage(post.pic),fit: BoxFit.fitWidth,)),
                        width: 70,
                        height: 100,
                      alignment: Alignment.centerLeft,
//                      child:Text(testnum.toString()),
                    child: Row(children: <Widget>[
                      Text(testnum.toString()),
                      Expanded(child: Image.asset(post.pic,fit: BoxFit.fitWidth,))
                    ],),
                    ),),
                    DataCell(Container(
//                        decoration: BoxDecoration(
//                            image: DecorationImage(image: AssetImage(post.pic),fit: BoxFit.fitWidth)),
//                        width: 70,
//                        height: 100,
                  child: Text(post.na),
                  ),),
                    DataCell(Text(post.atk.toString(),style: TextStyle(color: col1,fontWeight: wei1),)),
                    DataCell(Text(post.def.toString(),style: TextStyle(color: col2,fontWeight: wei2),)),
                    DataCell(Text(post.nai.toString(),style: TextStyle(color: col3,fontWeight: wei3),)),
                    DataCell(Text(post.nai.toString(),style: TextStyle(color: col4,fontWeight: wei4),)),
                    DataCell(Text(post.maxcp4.toString(),style: TextStyle(color: col5,fontWeight: wei5),)),
              ]);
            }).toList(),
            ),
            Container(height: 100,)
          ],
        ),),

    );

  }

  seleety(a,b,c,d){
    return Expanded(child: Container(child: InkWell(child: Image.asset(a),
      onTap: (){
        setState(() {
          tytextcl = d;
          aaa = b;
          tyh = 60;
          tyselectedicon = Icons.keyboard_arrow_down;
          tytitle = a;
          tych = c;
        });
      },)));

  }
}
