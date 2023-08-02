import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(locationapp());
}

class locationapp extends StatefulWidget {
  const locationapp({super.key});

  @override
  State<locationapp> createState() => _locationappState();
}

class _locationappState extends State<locationapp> {
  @override
  void initState() async {
    // TODO: implement initState
    super.initState();
    PermissionStatus status =
        await Permission.storage.isGranted.then((value) async {
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
