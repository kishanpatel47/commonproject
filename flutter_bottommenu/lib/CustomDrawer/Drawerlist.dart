import 'package:flutter/material.dart';
import 'package:bottommenu/Drawermodel.dart';
import 'package:bottommenu/geticon.dart';
import 'package:bottommenu/navigation/route_screen.dart';

List<Drawermodel> model = [
  Drawermodel(
    id: 0,
    name: 'Home',
    screenname: Routesscreen.Home,
    icon: getIcons.Home,
  ),
  Drawermodel(
    id: 1,
    name: 'Why Suvidha Sarthi ?',
    screenname: Routesscreen.Movie,
    icon: getIcons.movie,
  ),
];
