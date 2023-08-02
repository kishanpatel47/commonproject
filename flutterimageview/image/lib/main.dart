import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define the tint color you want to apply to the image
    Color tintColor =
        Colors.blue.withOpacity(1); // Example: Tint with semi-transparent blue

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Tint Color Change'),
        ),
        body: Center(
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(tintColor, BlendMode.srcATop),
            child: Image.asset('assets/images/login.png'),
          ),
        ),
      ),
    );
  }
}
