import 'package:dialog/TimerDialog.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(OTPScreen());
}

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  int otpTimer = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          if (otpTimer < 1) {
            timer.cancel();
          } else {
            otpTimer -= 1;
          }
        });
      },
    );
  }

  void openAlertDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return TimerDialog(
          timerValue: otpTimer,
        );
      },
    ).then((_) {
      _timer?.cancel(); // Cancel the timer after the dialog is closed
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('OTP Timer'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Time remaining: $otpTimer seconds'),
              TextButton(
                child: Text('Open Alert Dialog'),
                onPressed: () {
                  if (otpTimer > 0) {
                    openAlertDialog();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
