import 'package:bottommenu/navigation/Routes.dart';
import 'package:bottommenu/navigation/route_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AndroidRoute());
}

class AndroidRoute extends StatefulWidget {
  const AndroidRoute({super.key});

  @override
  State<AndroidRoute> createState() => _AndroidRouteState();
}

class _AndroidRouteState extends State<AndroidRoute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Routesscreen.Bottom,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
