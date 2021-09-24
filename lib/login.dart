import 'package:flutter/material.dart';
import 'package:keerthana/otp.dart';

import 'const/colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsConsts.purple,
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(38.0),
                    child: Container(
                      height: 70,
                      width: 1200,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: ColorsConsts.white, width: 2,
                            
                              ), ), //BoxShado),
                      child: Text(
                        'KEERTHANA TV',
                        style: TextStyle(
                            color: ColorsConsts.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, right: 15),
                    child: Text(
                      'Enter Your Mobile Number',
                      style: TextStyle(
                          color: ColorsConsts.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15, right: 35),
                    child: Text(
                      'Please confirm your mobile number , we \nneed to verify.',
                      style: TextStyle(color: ColorsConsts.white, fontSize: 15),
                      // fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(top: 40),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              // topRight: Radius.circular(40),
                            ),color: ColorsConsts.white
                            ),
                            
                          height: height / 1.69,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top:98,left:22,right: 22),
                                child: Align(alignment:Alignment.topCenter,
                                  child: Container(height: height*.1,width: width*.9,
                                    
                                    child: Card(elevation: 10,
                                      child: Padding(
                                        padding: const EdgeInsets.only(bottom:18,left: 10),
                                        child: TextFormField(
                                            textAlign: TextAlign.left,
                                            decoration: const InputDecoration(
                                              hintText: " Mobile Number",
                                              hintStyle: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                  fontSize: 13),
                                                  border: InputBorder.none
                                             )),
                                      ),
                                    ),
                                  ),
                                      
                                ),
                                
                              ),
                              SizedBox(height: 70,),
                             InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP()));
                        },
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(height: height*.065,width: width*.6,alignment: Alignment.center,
                          // padding: EdgeInsets.all(15),
                             margin: EdgeInsets.only(right:13),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: ColorsConsts.purple),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                         )) ],
                          ),),
                          
                          ),
                          
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
