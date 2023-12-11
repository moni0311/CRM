// import 'package:flutter/material.dart';
// class task1 extends StatefulWidget {
//   const task1({super.key});
//
//   @override
//   State<task1> createState() => _task1State();
// }
//
// class _task1State extends State<task1> {
//
// final Numberscontroller=TextEditingController();
// String Number = "";
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: Container(
//         height: MediaQuery.of(context).size.height*1,
//         width: MediaQuery.of(context).size.width*1,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   decoration: InputDecoration(
//                     labelText: "Count",
//                     border: OutlineInputBorder()
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: TextFormField(
//                   controller: Numberscontroller,
//                   decoration: InputDecoration(
//                     labelText: "Numbers",
//                     border: OutlineInputBorder()
//                   ),
//                 ),
//               ),
//              IconButton(onPressed: (){},
//                  icon: const Icon(Icons.add,size: 30,
//                    color: Colors.black
//                      )),
//               Container(
//                 height: 300,
//                 width: 300,
//                 decoration: BoxDecoration(
//                   border: Border.all()
//                 ),
//
//
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ElevatedButton(onPressed:(){
//
//                 }, child: Text("Calculate")),
//               )
//
//               // ElevatedButton(onPressed: (){},
//               //     style: ElevatedButton.styleFrom(
//               //       backgroundColor: Colors.blue
//               //     ),
//               //     child: Icon(Icons.add))
//             ],
//           ),
//         ),
//       ),
//
//     );
//   }
// }
