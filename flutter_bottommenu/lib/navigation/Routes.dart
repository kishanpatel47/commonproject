import 'package:flutter/material.dart';
import 'package:bottommenu/Bottomnavigation/Bottom.dart';
import 'package:bottommenu/Pages/HomeScreen.dart';
import 'package:bottommenu/Pages/Movie.dart';
import 'package:bottommenu/animation/lefttorightanimation.dart';
import 'package:bottommenu/navigation/route_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routesscreen.Home:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      case Routesscreen.Movie:
        return MaterialPageRoute(
          builder: (context) => Movie(),
        );
      case Routesscreen.Bottom:
        return MaterialPageRoute(
          builder: (context) => Bottomscreen(),
        );
      case Routesscreen.RighttoLeftanimations:
        return MaterialPageRoute(
          builder: (context) => RightToLeftImageAnimation(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Center(
            child: Text('No Page  found'),
          ),
        );
    }
  }
}
