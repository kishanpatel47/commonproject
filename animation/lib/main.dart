// import 'package:flutter/material.dart';
// import 'dart:math';

// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> with  TickerProviderStateMixin {
//   late final AnimationController _controller =AnimationController(
    
//     duration: Duration(seconds: 1),
    
//     vsync: this) ..repeat();

// @override
// void dispose() {
//   _controller.dispose();
//     // TODO: implement dispose
//     super.dispose();
//   }
    
//   @override
//   Widget build(BuildContext context) {
//     return  AnimatedBuilder(animation: _controller, builder: (context, child) {
//       return Transform.translate(offset: Offset(_controller.value *.52,_controller.value -20.0,
      
      
//       ),
      
//       child: FlutterLogo(size: 200,),
      
//       );
   
   
   
//     },);
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BackgroundAnimation());
  }
}

class BackgroundAnimation extends StatefulWidget {
  @override
  _BackgroundAnimationState createState() => _BackgroundAnimationState();
}

class _BackgroundAnimationState extends State<BackgroundAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  double _position = 0.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
    _animationController.addListener(() {
      setState(() {
        _position = _animationController.value * 500 /2; // Adjust the distance as needed
      });
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            transform: Matrix4.translationValues(_position, 0, 0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.blue,
                  Colors.green,
                ],
              ),
            ),
          ),
          // Add your other widgets here
        ],
      ),
    );
  }
}
