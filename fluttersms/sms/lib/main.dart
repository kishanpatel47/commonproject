import 'package:flutter/material.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(fluttersms());
}

class fluttersms extends StatefulWidget {
  const fluttersms({super.key});

  @override
  State<fluttersms> createState() => _fluttersmsState();
}

class _fluttersmsState extends State<fluttersms> {
  String message = "This is a test message!";
  // var recipents = "1234567890";
  List<String> recipents = ["8128229994", "7359866462"];

  void _sendsms() async {
    PermissionStatus status = await Permission.sms.request();

    if (status == PermissionStatus.granted) {
      String _result = await sendSMS(
              message: message, recipients: recipents, sendDirect: true)
          .catchError((onError) {
        print(onError);
      });
      print(_result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter sms'),
        ),
        body: Center(
          child: Card(
            child: TextButton(
              onPressed: () {
                // _sendsms();
                _sendsms();
              },
              child: Text('Send sms'),
            ),
          ),
        ),
      ),
    );
  }
}
