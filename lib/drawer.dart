import 'package:flutter/material.dart';

import 'const/colors.dart';
class DrawerScreen extends StatefulWidget {
 
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 120,
            child:Container(alignment: Alignment.center,
            color: ColorsConsts.purple,
              child: Text('DashBoard',textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,color: ColorsConsts.white,fontWeight: FontWeight.bold),),)
          ),
            //Divider(color: ColorsConsts.purple,thickness: 1,),
            
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 18,top: 10),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/1.png',
                    ),
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0,top: 10),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.purple,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/3.png',
                    ),
                   
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'About',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.purple,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/4.png',
                    ),
                   
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Contact',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.purple,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/5.png',
                    ),
                   
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Facebook',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.purple,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ])),
        Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/6.png',
                    ),
                   
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Instagram',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.purple,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ])),
        Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/7.png',
                    ),
                   
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Youtube',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.purple,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ])),
        Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Row(children: [
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/8.png',
                    ),
                   
                    iconSize: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          fontSize: 16,
                          color: ColorsConsts.purple,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ])),
       
          ])])));
  }
}