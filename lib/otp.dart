import 'package:flutter/material.dart';
import 'package:keerthana/login.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'const/colors.dart';
import 'home.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
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
                child: Stack(children: [
              Column(children: [
                Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: Container(
                    height: 70,
                    width: 1200,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: ColorsConsts.white, width: 2)),
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
                  padding: EdgeInsets.only(top: 20, right: 50),
                  child: Text(
                    'Enter Verification Pin',
                    style: TextStyle(
                        color: ColorsConsts.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15, left: 35),
                  child: Text(
                    'Sit back & relax while we verify your phone number.',
                    style: TextStyle(
                      color: ColorsConsts.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    margin: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        // topRight: Radius.circular(40),
                      ),
                      color: ColorsConsts.white,
                    ),
                    height: height / 1.69,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 78.0, left: 32, right: 32),
                            child: PinCodeTextField(
                              backgroundColor: ColorsConsts.white,
                              length: 4,
                              obscureText: false,
                              animationType: AnimationType.fade,
                              pinTheme: PinTheme(
                                activeColor: ColorsConsts.purple,
                                shape: PinCodeFieldShape.box,
                                selectedFillColor: ColorsConsts.purple,
                                selectedColor: ColorsConsts.purple,
                                inactiveColor: ColorsConsts.purple,
                                disabledColor: ColorsConsts.purple,
                                
                                borderRadius: BorderRadius.circular(5),
                                fieldHeight: 50,
                                //backgroundColor: Colors.white,
                                fieldWidth: 50,
                                inactiveFillColor: Colors.transparent,
                                activeFillColor: Colors.white,
                              ),
                              animationDuration: Duration(milliseconds: 300),
                              enableActiveFill: true,
                              textStyle:
                                  TextStyle(color: ColorsConsts.purple),
                              onCompleted: (v) {
                                print("Completed");
                              },
                              onChanged: (value) {
                                print(value);
                                setState(() {
                                  //  currentText = value;
                                });
                              },
                              beforeTextPaste: (text) {
                                print("Allowing to paste $text");
                                return true;
                              },
                              appContext: context,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * .08,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              right: 7,
                            ),
                            height: height * .065,
                            width: width * .5,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                color: ColorsConsts.purple),
                            child: Text(
                              'Submit OTP',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ])
            ]))));
  }
}
