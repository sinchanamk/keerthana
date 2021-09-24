// import 'package:flutter/material.dart';
// import 'package:keerthana/const/colors.dart';
// class Jesus extends StatelessWidget {
//   const Jesus({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SizedBox(height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//           child: Image.asset('assets/img.jpeg',fit: BoxFit.cover,),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(38.0),
//           child: Align(alignment: Alignment.bottomRight,
//             child: InkWell(
//                       onTap: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
//                       },
//                       child: Container(
//                           margin: EdgeInsets.only(right:7,),
                       
//                       height: height*.065,width: width*.5,alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(40),
//                             color: ColorsConsts.purple),
//                         child: Text(
//                           'Login',
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 15,
//                               fontWeight: FontWeight.w700),
//                         ),
//                       ),
//                     ),
//                ],
      
//     );
//   }
// }