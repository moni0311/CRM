// import 'package:flutter/material.dart';
//
// class listtask extends StatefulWidget {
//   const listtask({super.key});
//
//   @override
//   State<listtask> createState() => _listtaskState();
// }3
//
// class _listtaskState extends State<listtask> {
//   final a = TextEditingController();
//   final b = TextEditingController();
//   late final c = TextEditingController();
//   final d = TextEditingController();
//   final e = TextEditingController();
//   final f = TextEditingController();
//   final g = TextEditingController();
//   final h = TextEditingController();
//   final i = TextEditingController();
//   final j = TextEditingController();
//   final k = TextEditingController();
//   final l = TextEditingController();
//   final m = TextEditingController();
//
//   List<int> a1 = [];
//
//
//
//
//
//   int findMin() {
//     return a1.reduce((first, next) => first < next ? first : next);
//   }
//
//   int findmax() {
//     return a1.reduce((current, next) => current > next ? current : next);
//   }
//
//   int fold() {
//
//     return a1.fold(0, ( sum, element) => sum + element );
//     // numbers.fold(0, (int sum, int number) => sum + number);
//
//   }
//
//   List<int> great() {
//
//     return a1.where((element) => element > 5).toList();
//
//   }
//
//
//   List<int> prime() {
//     bool isPrime(int number) {
//       if (number <= 1) {
//         return false;
//       }
//       for (int i = 2; i <= number / 2; i++) {
//         if (number % i == 0) {
//           return false;
//         }
//       }
//       return true;
//     }
//
//     return a1.where((element) => isPrime(element)).toList();
//   }
//
//   List<int> square() {
//
//     return a1.map((element) => element * element).toList();
//
//   }
//   var positive = 0;
//
//
//
//
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(children: [
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Count  ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
//               ),
//               Container(
//                   height: 35,
//                   width: 100,
//                   decoration: BoxDecoration(
//                       border: Border.all()
//                   ),
//
//                   child: TextFormField(
//                     controller: a,
//                   ))
//             ],
//           ),
//           SizedBox(height: 25,),
//           Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("Values ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
//               ),
//               Container(
//                   height: 35,
//                   width: 100,
//                   decoration: BoxDecoration(
//                       border: Border.all()
//                   ),
//
//                   child: TextFormField(
//                     controller: b,
//                   )),
//
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 20,right: 70),
//             child: ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   // Check if the length is less than 5 before adding a new element
//                   if (a1.length < int.parse(a.text) && b.text.isNotEmpty) {
//                     a1.add(int.parse(b.text));
//                   }
//                   else {
//                     // Show a warning if the length exceeds 5
//                     showDialog(
//                       context: context,
//                       builder: (BuildContext context) {
//                         return AlertDialog(
//                           title: Text("Warning"),
//                           content: Row(
//                             children: [Text("length should not exceed"),
//                               Text(a.text,),
//                             ],
//                           ),
//                           actions: [
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               },
//                               child: Text("OK"),
//                             ),
//                           ],
//                         );
//                       },
//                     );
//                   }
//                 });
//               },
//               style: ElevatedButton.styleFrom(
//                   primary: Colors.blueAccent),child: Icon(Icons.add),
//               // child: Text(
//               //   "Validate",
//               //   style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
//               // ),
//
//             ),
//           ),
//           SizedBox(height: 25,),
//           Container(
//             height: 300,
//             width: 350,
//             decoration: BoxDecoration(border: Border.all()),
//             child: ListView.builder(
//                 scrollDirection: Axis.vertical,
//                 itemCount: a1.length,
//                 itemBuilder: (context, index) {
//                   return Text(a1[index].toString());
//                 }),
//           ),
//
//           SizedBox(height: 10,),
//           ElevatedButton(onPressed: (){
//             findMin();
//             d.text = findMin().toString();
//
//             findmax();
//             c.text = findmax().toString();
//
//             a1.sort((a, b) => a.compareTo(b));
//             e.text = a1.toString();
//
//             a1.sort((a, b) => b.compareTo(a));
//             f.text = a1.toString();
//
//             fold();
//             g.text = fold().toString();
//
//             great();
//             h.text = great().toString();
//
//             prime();
//             i.text = prime().toString();
//
//             square();
//             j.text = square().toString();
//
//             m.text = (int.parse(g.text)/int.parse(a.text)).toString();
//
//
//
//
//
//
//           }, style: ElevatedButton.styleFrom(fixedSize: const Size(300, 45),primary: Colors.green),
//
//
//             child: Text("Calculate",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),
//             ),
//           ),
//           Text("highest value",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
//           TextFormField(
//             controller: c,
//
//             decoration:InputDecoration(border: OutlineInputBorder()) ,),
//           Text("lowest value",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
//           TextFormField(
//             controller: d,
//
//             decoration:InputDecoration(border: OutlineInputBorder()) ,),
//           Text("Ascending",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
//           TextFormField(
//             controller: e,
//
//             decoration:InputDecoration(border: OutlineInputBorder()) ,),
//           Text("Descending",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
//           TextFormField(
//             controller: f,
//
//             decoration:InputDecoration(border: OutlineInputBorder()) ,),
//           Text("Sum value",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
//           TextFormField(
//             controller: g,
//
//             decoration:InputDecoration(border: OutlineInputBorder()) ,),
//           Text("Greater than 10",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
//           TextFormField(
//             controller: h,
//
//             decoration:InputDecoration(border: OutlineInputBorder()) ,),
//           Text("Prime or not",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
//           TextFormField(
//             controller: i,
//
//             decoration:InputDecoration(border: OutlineInputBorder()) ,),
//           Text("Square",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
//           TextFormField(
//             controller: j,
//             textAlign: TextAlign.center,
//
//             decoration:InputDecoration(border: OutlineInputBorder()) ,),
//
//           Text("positive",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
//           TextFormField(
//             controller: k,
//             textAlign: TextAlign.center,
//
//             decoration:InputDecoration(border: OutlineInputBorder()) ,),
//
//           Text("Negative",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
//           TextFormField(
//             controller: l,
//             textAlign: TextAlign.center,
//
//             decoration:InputDecoration(border: OutlineInputBorder()) ,),
//
//           Text("average",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
//           TextFormField(
//             controller: m,
//
//             decoration:InputDecoration(border: OutlineInputBorder()) ,),
//
//
//
//
//
//         ],
//         ),
//       ),
//
//
//
//
//
//
//
//
//     );
//   }
// }