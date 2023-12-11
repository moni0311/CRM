
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:blinking_text/blinking_text.dart';
import 'package:untitled5/display.dart';

import '../colors.dart';
// import 'model.dart';



class review extends StatefulWidget {
  const review({super.key});

  @override
  State<review> createState() => _reviewState();
}

class _reviewState extends State<review> {
  final _formGlobalkey=GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _msgController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // body:
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [clr2,gtgreen],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
              )
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formGlobalkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: BlinkText(
                            'Rate!!!',
                            style: TextStyle(fontSize: 25.0, color: Colors.redAccent),
                            beginColor: Colors.white,
                            endColor: Colors.black26,
                            times: 100,
                            duration: Duration(seconds: 1)
                        ),
                      ),
                    ),
                  ),

                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Text("   We hope you have a Delightful meal with us "

                            ,
                            style: TextStyle(color: Colors.black87,
                                fontSize: 20),),
                          Text("  Today!  ",


                            style: TextStyle(color: Colors.black87,
                                fontSize: 20),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Card(
                      elevation: 10,
                      color: Colors.white24,
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber
                          // Icons.star, color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: BlinkText(
                        'Feedback',
                        style: TextStyle(fontSize: 48.0, color: Colors.redAccent),
                        beginColor: Colors.black,
                        endColor: Colors.orange,
                        times: 100,
                        duration: Duration(seconds: 1)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 320),
                    child: Text("Name",
                      style: TextStyle(color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 370,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              labelText: "Enter name",hintStyle:
                          TextStyle(color: Colors.black26)
                          ),
                          validator: (value) {

                            { if(value==null || value.isEmpty || value.length<3|| !RegExp(r"^[a-zA-Z ]").hasMatch(value!))
                              return 'Enter your Name !';
                            }
                            return null;
                          },

                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 320,top: 20),
                    child: Text("Email",
                      style: TextStyle(color: Colors.black),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: 370,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _userIdController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(10)
                            ),
                            // border: InputBorder.none,
                            labelText: "Enter email",hintStyle:
                          TextStyle(color: Colors.black12),

                          ),
                          validator: (value) {
                            if(value==null || value.isEmpty ||  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value!)){
                              return "Enter the correct email";
                            }
                            return null;
                          },

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30,right: 300),
                    child: Text("Message"),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Card(
                      elevation: 10,
                      child: Container(
                        height: 150,
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: TextFormField(
                          controller: _msgController,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          autofocus: false,
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20.0),                          border: InputBorder.none,
                              hintText: "give your experience",
                              hintStyle: TextStyle(color: Colors.black26)
                          ),

                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: SizedBox(
                      width: 160,
                      height: 50,
                      child: ElevatedButton(onPressed: (){

                        if(_formGlobalkey.currentState!.validate())


                          showRatingDialog(
                            context,
                            _nameController.text,
                            _userIdController.text,
                            _msgController.text,
                             3,
                             // Provide the initial rating value here
                          );



                      },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent
                          ),

                          child: Text("Submit",
                            style: TextStyle(fontSize: 25,
                                color: Colors.black),)),
                    ),
                  )
                ],



              ),
            ),
          ),

        ),
      ),

    );


  }
}
void showRatingDialog(
    BuildContext context,
    String name,
    String email,
    String feedback,
    double initialRating,
    ) {

  TextEditingController nameController = TextEditingController();
  nameController.text = name; // Set the name text from the parameter

  TextEditingController emailController = TextEditingController();
  emailController.text = email;

  // Set the email text from the parameter
  TextEditingController feedbackController = TextEditingController();
  feedbackController.text = feedback;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();
  final TextEditingController _msgController = TextEditingController();

  // Set the feedback text from the parameter


  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Feedback Submitted!"),
        content: Column(
          children: [
            Text("We value your feedback!"),

            SizedBox(height: 20),
            Text("Name:"),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your name",
              ),
            ),
            SizedBox(height: 20),
            Text("Email:"),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your email",
              ),
            ),
            SizedBox(height: 20),
            Text("Feedback Message:"),
            TextField(
              controller: feedbackController,
              maxLines: null, // Allow multiline input
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your feedback here",
              ),
            ),
            SizedBox(height: 20),
            Text("Rating:"),
            RatingBar.builder(
              initialRating: initialRating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (value) {
                initialRating = value;
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              print("Feedback message: ${feedbackController.text}");
              print("Name: ${nameController.text}");
              print("Email: ${emailController.text}");
              print("Rating: $initialRating");
              Navigator.of(context).pop();

              // String name = _nameController.text;
              // String userId = _userIdController.text;
              // String msg = _msgController.text;
              //
              // if (name.isNotEmpty && userId.isNotEmpty && msg.isNotEmpty) {
              //   DataModel newItem = DataModel(name: name, userId: userId, msg: msg);
              //   dataModelList.itemList.add(newItem);
              //   _nameController.clear();
              //   _userIdController.clear();
              //   _msgController.clear();
              //
              //   Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => DisplayScreen()));
              // }// Provide the initial rating value here


              Navigator.push(context, MaterialPageRoute(builder: (context)=>DisplayScreen()));

            },
            child: Text("Submit"),
          ),
        ],
      );
    },
  );
}