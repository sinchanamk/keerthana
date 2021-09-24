import 'package:flutter/material.dart';

import 'const/colors.dart';
import 'login.dart';
class Keerthana extends StatefulWidget {
  const Keerthana({ Key? key }) : super(key: key);

  @override
  _KeerthanaState createState() => _KeerthanaState();
}

class _KeerthanaState extends State<Keerthana> {
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
      body: 
      Stack(
        children:[ SizedBox(height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
          child: Image.asset('assets/k.png',fit: BoxFit.cover,),),
          Container(alignment: Alignment.center,
            child: Image.asset('assets/k1.png'),
          ),
          InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                    },
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(height: height*.065,width: width*.4,alignment: Alignment.center,
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: ColorsConsts.purple),
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
         ] ),
      
    );
  }
}