import 'dart:math';

import 'package:flutter/material.dart';
import 'package:keerthana/drawer.dart';

import 'const/colors.dart';
class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

   double width = 0.0;
  double height = 0.0;

  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  @override
 Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: DrawerScreen(),
      appBar: AppBar(backgroundColor: ColorsConsts.purple,
        leading: Builder(
          builder: (context) {
            return IconButton(onPressed: (){
                 Scaffold.of(context).openDrawer();
               
            }, icon: Icon(Icons.menu,color: ColorsConsts.white,));
          }
        ),),

        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height/2.7,width: width,
              child: Image.asset('assets/Home.jpg',fit: BoxFit.fill,),
              ),
               Container(margin: EdgeInsets.only(top: 10,left: 5,right: 5),
               height: 120,width: 500,
              
                child: Card(color: ColorsConsts.light,elevation: 10,
                  shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),       child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left:28.0),
                      child: Image.asset('assets/app.png'),
                    ),
                    Column(
                      children: [
                        Padding(
                           padding:  EdgeInsets.only(left:90
                           ,top:12),
                         child: Text('App Link',style: TextStyle(color: ColorsConsts.white,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:100,top: 10),
                         child: RaisedButton(color: ColorsConsts.purple,
                            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
                            onPressed: (){}, child: Text('Share',style: TextStyle(color: ColorsConsts.white),)),
                        )
                      ],
                    )
                ],),),
              ),
              
              Container(margin: EdgeInsets.only(top: 5,left: 5,right: 5),
              height: 120,width: 500,
                child: Card(color: ColorsConsts.light,
                elevation: 10,
                   shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),      child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left:28.0),
                      child: Image.asset('assets/ios.png'),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left:100,top:18),
                          child: Text('IOS Link',style: TextStyle(color: ColorsConsts.white,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:100,top: 10),
                         child: RaisedButton(color: ColorsConsts.purple,
                           shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),      
                            onPressed: (){}, child: Text('Share',style: TextStyle(color: ColorsConsts.white,),)),
                        )
                      ],
                    )
                ],),),
              ),
               Container(margin: EdgeInsets.only(top: 10,left: 5,right: 5),height: 120,width: 500,
              
                child: Card(color: ColorsConsts.light,elevation: 10,shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
                  //shape: Rectangle.,
                  child: Row(
                    children: [
                    Padding(
                      padding: const EdgeInsets.only(left:28.0),
                      child: Image.asset('assets/you.png',),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(left:87,top:12),
                          child: Text('Youtube Link',style: TextStyle(color: ColorsConsts.white,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                           padding:  EdgeInsets.only(left:80,top: 10),
                         child: RaisedButton(color: ColorsConsts.purple,
                         shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),onPressed: (){}, child: Text('Share',style: TextStyle(color: ColorsConsts.white),)),
                        )
                      ],
                    )
                ],),),
              ),
            ],
          ),
        ),
        
    );
  }
}