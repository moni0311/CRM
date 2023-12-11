// import 'package:flutter/material.dart';
//
// class Task extends StatefulWidget {
//   const Task({super.key});
//
//   @override
//   State<Task> createState() => _TaskState();
// }
//
// class _TaskState extends State<Task> {
//
//   final AverageController = TextEditingController();
//   final SmallestController = TextEditingController();
//   final LargestController = TextEditingController();
//   final SquareController = TextEditingController();
//   final SumController = TextEditingController();
//   final Greater_thenController = TextEditingController();
//   final ReverseController = TextEditingController();
//   final AssendingController = TextEditingController();
//   final DecendingController = TextEditingController();
//   final PrimeController = TextEditingController();
//   final negativeController = TextEditingController();
//   final PositiveController = TextEditingController();
//
//
//   final NumberController = TextEditingController();
//   final CountController = TextEditingController();
//
//   final Valid = GlobalKey();
//
//   String Number = "";
//   List listvalue = [];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//           child: Form(
//             key:Valid,
//             child: Container(
//               height: MediaQuery.of(context).size.height*1,
//               width: MediaQuery.of(context).size.width*1,
//               child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children:[
//                   TextFormField(
//                     controller: CountController,
//                     decoration: InputDecoration(
//                         labelText: "Count",
//                         border: OutlineInputBorder()
//                     ),
//                   ),
//                   TextFormField(
//                     controller: NumberController,
//                     decoration: InputDecoration(
//                         labelText: "Number",
//                         border: OutlineInputBorder()
//                     ),
//                   ),
//                   SizedBox(
//                       height: 40,
//                       width: 150,
//                       child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.yellowAccent),
//                           onPressed: (){
//                             setState(() {
//                               Number = NumberController.text;
//                               listvalue.add(NumberController.text);
//                               NumberController.text = "";
//                             });
//
//                           }, child: Icon(Icons.add,color: Colors.black,))),
//                   Container(
//                     height: 400,
//                     width: 300,
//                     decoration:BoxDecoration(
//                         border: Border.all()
//                     ),
//                     child: ListView.builder(
//                       itemCount: listvalue.length,
//                       itemBuilder: (BuildContext context,index) {
//                         return Column(
//                           children: [
//                             Text(listvalue[index])
//                           ],
//                         );
//                       },),
//                   ),
//                   SizedBox(
//                       height: 40,
//                       width: 150,
//                       child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
//                           onPressed: (){
//                             // smallest
//                             setState(() {
//                               listvalue.sort();
//                               listvalue.sort((a, b) => a.length.compareTo(b.length));
//                               SmallestController.text = listvalue.first.toString();
//                             });
//                             //largest
//                             setState(() {
//                               listvalue.sort();
//                               listvalue.sort((a, b) => a.length.compareTo(b.length));
//                               LargestController.text = listvalue.last.toString();
//                             });
//                             // Asscending
//                             setState(() {
//                               listvalue.sort();
//                               listvalue.sort((a, b) => a.length.compareTo(b.length));
//                               AssendingController.text = listvalue.toString();
//
//
//                             });
//                             // Decending
//                             setState(() {
//                               listvalue.sort((b,a) => a.compareTo(b));
//                               listvalue.sort((b, a) => a.length.compareTo(b.length));
//                               DecendingController.text = listvalue.toString();
//                             });
//                             // Greater then 10
//                             setState(() {
//                               var ab = listvalue.where((e) => int.parse(e)>10);
//                               Greater_thenController.text = ab.toString();
//                             });
//                             //Square
//                             setState(() {
//                               var square = listvalue.where((e) => int.parse(e)>10);
//                               SquareController.text = square.toString();
//                             });
//                             // Sum
//
//
//
//                           }, child: Text("Calculate"))),
//                   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SizedBox(height: 50,
//                         width: 130,
//                         child: TextFormField(
//                           controller: AverageController,
//                           decoration: InputDecoration(
//                               labelText: "Average",
//                               border: OutlineInputBorder()
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 50,
//                         width: 130,
//                         child: TextFormField(
//                           controller: SmallestController,
//                           decoration: InputDecoration(
//                               labelText: "Smallest",
//                               border: OutlineInputBorder()
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 50,
//                         width: 130,
//                         child: TextFormField(
//                           controller: LargestController,
//                           decoration: InputDecoration(
//                               labelText: "Largest",
//                               border: OutlineInputBorder()
//                           ),
//                         ),
//                       ),
//
//
//                     ],),
//                   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SizedBox( height: 50,
//                         width: 130,
//                         child: TextFormField(
//                           controller: SquareController,
//                           decoration: InputDecoration(
//                               labelText: "Square",
//                               border: OutlineInputBorder()
//                           ),
//                         ),
//                       ),
//                       SizedBox( height: 50,
//                         width: 130,
//                         child: TextFormField(
//                           controller: SumController,
//                           decoration: InputDecoration(
//                               labelText: "Sum",
//                               border: OutlineInputBorder()
//                           ),
//                         ),
//                       ),
//                       SizedBox( height: 50,
//                         width: 130,
//                         child: TextFormField(
//                           controller: Greater_thenController,
//                           decoration: InputDecoration(
//                               labelText: "greater then 10",
//                               border: OutlineInputBorder()
//                           ),
//                         ),
//                       ),
//                     ],),
//                   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SizedBox( height: 50,
//                         width: 130,
//                         child: TextFormField(
//                           controller: ReverseController,
//                           decoration: InputDecoration(
//                               labelStyle: TextStyle(fontSize: 15),
//                               labelText: "reverse",
//                               border: OutlineInputBorder()
//                           ),
//                         ),
//                       ),
//                       SizedBox( height: 50,
//                         width: 130,
//                         child: TextFormField(
//                           controller: DecendingController,
//                           decoration: InputDecoration(
//                               labelStyle: TextStyle(fontSize: 15),
//                               labelText: "Descending",
//                               border: OutlineInputBorder()
//                           ),
//                         ),
//                       ),
//                       SizedBox( height: 50,
//                         width: 130,
//                         child: TextFormField(
//                           controller: AssendingController,
//                           decoration: InputDecoration(
//                               labelText: "Assending",
//                               border: OutlineInputBorder()
//                           ),
//                         ),
//                       ),
//
//
//                     ],),
//                   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SizedBox( height: 50,
//                         width: 130,
//                         child: TextFormField(
//                           controller: PrimeController,
//                           decoration: InputDecoration(
//                               labelStyle: TextStyle(fontSize: 15),
//                               labelText: "Prime Number",
//                               border: OutlineInputBorder()
//                           ),
//                         ),
//                       ),
//                       SizedBox( height: 50,
//                         width: 130,
//                         child: TextFormField(
//                           controller: negativeController,
//                           decoration: InputDecoration(
//                               labelStyle: TextStyle(fontSize: 15),
//                               labelText: "Negative Number",
//                               border: OutlineInputBorder()
//                           ),
//                         ),
//                       ),
//                       SizedBox( height: 50,
//                         width: 130,
//                         child: TextFormField(
//                           controller: PositiveController,
//                           decoration: InputDecoration(
//                               labelStyle: TextStyle(fontSize: 15),
//                               labelText: "Positive Number",
//                               border: OutlineInputBorder()
//                           ),
//                         ),
//                       ),
//
//
//                     ],),
//
//                 ],),
//             ),
//           )
//       ),
//     );
//   }
// }
