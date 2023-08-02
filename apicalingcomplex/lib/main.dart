import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main(){
  runApp(apicalling());
}
class apicalling extends StatefulWidget {
  const apicalling({super.key});

  @override
  State<apicalling> createState() => _apicallingState();
}

class _apicallingState extends State<apicalling> {
 List userdata=[];


@override
  void initState() {
    getlist();
  }
Future<dynamic> getlist() async{
  http.Response response =await http.get(Uri.parse('https://testapi.devtoolsdaily.com/users/'));
 userdata=jsonDecode(response.body);
 print(userdata);
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: 
        
         FutureBuilder(
        
        future: getlist(),
        builder:(context, snapshot) {
       if(snapshot.hasData){
        return Text('Loading');
       } 
       else{
        return ListView.builder(
          itemCount: userdata.length,
          itemBuilder: (context, index) {
            return Card(
     child: Row(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [


      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       Container(
        child: Text(userdata[index]["firstName"]),
       ),
        Container(
        child: Text(userdata[index]["lastName"]),
       ),
       Container(
        child: Text(userdata[index]["countryCode"]),
       ),
          Container(
        child: Text(userdata[index]["companyId"]!.toString()),
       )
      ],
      ),
      
     ]),
            );
          },
        );
       }
      },),
    ) 
    );
  }
}