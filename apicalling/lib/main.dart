
import 'package:flutter/material.dart';

import 'Homescreen.dart';
void main(){
  runApp(Apicalling());
}
class Apicalling extends StatefulWidget {
  const Apicalling({super.key});

  @override
  State<Apicalling> createState() => _ApicallingState();
}

class _ApicallingState extends State<Apicalling> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Homescreen(),
    );
  }
 

}