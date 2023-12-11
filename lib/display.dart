import 'package:flutter/material.dart';

import 'REview1.dart';
import 'model.dart';

class DisplayScreen extends StatefulWidget {
  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
            height: 1000,
            child:Column(
              children: [


                Container(
                  height: 1000,
                  child: ListView.builder(
                    itemCount: dataModelList.itemList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 10,
                        child: Container(


                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),

                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      child: Text(dataModelList.itemList[index].name.toString())),
                                  Container(child: Text(dataModelList.itemList[index].userId.toString())),
                                  Container(child: Text(dataModelList.itemList[index].msg.toString())),
                                  // ElevatedButton(onPressed: (){}, child: Text("Add more details"))

                                ],
                              ),

                          ),


                        ),
                      );





                    },

                  ),
                ),
              ],
            )


        ),
      ),

    );
  }
}

