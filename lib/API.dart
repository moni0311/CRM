import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'json dart.dart';
class api extends StatefulWidget {
  const api({super.key});

  @override
  State<api> createState() => _apiState();
}

class _apiState extends State<api> {

  Future<monis> fetchAlbum() async{
     var a= await http.get(Uri.parse('https://www.boredapi.com/api/activity'));
     return monis.fromJson(jsonDecode(a.body));
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchAlbum();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            FutureBuilder(
              future: fetchAlbum(),
              builder: (context, snapshot) {
               if(snapshot.hasData){
                  return Column(
                    children: [
                      Text(snapshot.data!.accessibility.toString()),
                      Text(snapshot.data!.activity.toString()),
                      Text(snapshot.data!.type.toString()),
                      Text(snapshot.data!.participants.toString()),
                      Text(snapshot.data!.price.toString()),
                      Text(snapshot.data!.link.toString()),
                      Text(snapshot.data!.key.toString()),
                    ],
                  );

                } else if(snapshot.hasError){
                  return Text("Error");
                }
                return CircularProgressIndicator();
              },),
            // FutureBuilder(
            //   future: fetchAlbum(),
            //   builder: (context, snapshot) {
            //    if(snapshot.hasData){
            //       return Column(
            //         children: [
            //           Text(snapshot.data!.accessibility.toString()),
            //           Text(snapshot.data!.activity.toString()),
            //           Text(snapshot.data!.type.toString()),
            //           Text(snapshot.data!.participants.toString()),
            //           Text(snapshot.data!.price.toString()),
            //           Text(snapshot.data!.link.toString()),
            //           Text(snapshot.data!.key.toString()),
            //         ],
            //       );
            //
            //     } else if(snapshot.hasError){
            //       return Text("Error");
            //     }
            //     return CircularProgressIndicator();
            //   },),
          ],
        ),
      ),
    );
  }
}
