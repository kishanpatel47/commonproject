import 'package:flutter/material.dart';

void main() {
  runApp(profilescreen());
}

class profilescreen extends StatefulWidget {
  const profilescreen({super.key});

  @override
  State<profilescreen> createState() => _profilescreenState();
}

class _profilescreenState extends State<profilescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('profile screen'),
            ),
            body: Container(
                child: Image.network(
              "https://www.wordstream.com/wp-content/uploads/2022/02/social-media-marketing-fundamentals-wordstream.png",
              fit: BoxFit.cover,
              loadingBuilder:
                  (BuildContext ctx, Widget child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                  );
                }
              },
            ))));
  }
}
