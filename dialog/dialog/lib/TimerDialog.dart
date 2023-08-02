import 'dart:async';

import 'package:flutter/material.dart';

class TimerDialog extends StatefulWidget {
  final int timerValue;

  TimerDialog({required this.timerValue});

  @override
  _TimerDialogState createState() => _TimerDialogState();
}

class _TimerDialogState extends State<TimerDialog> {
  late int currentTimerValue;

  @override
  void initState() {
    super.initState();
    currentTimerValue = widget.timerValue;
    startDialogTimer();
  }

  void startDialogTimer() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          if (currentTimerValue < 1) {
            timer.cancel();
          } else {
            currentTimerValue -= 1;
          }
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        title: Text('OTP Timer'),
        content: Text('Time remaining: $currentTimerValue seconds'),
        actions: <Widget>[
          TextButton(
            child: Text('Close'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
