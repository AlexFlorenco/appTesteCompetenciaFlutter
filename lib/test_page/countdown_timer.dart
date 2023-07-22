import 'dart:async';
import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  final int seconds;

  const CountdownTimer({super.key, required this.seconds});

  @override
  CountdownTimerState createState() => CountdownTimerState();
}

class CountdownTimerState extends State<CountdownTimer> {
  Timer? _timer;
  int? _remainingSeconds;

  @override
  void initState() {
    super.initState();
    _remainingSeconds = widget.seconds;
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds! > 0) {
          _remainingSeconds = _remainingSeconds! - 1;
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  void reset() {
    setState(() {
      _remainingSeconds = widget.seconds;
    });
    _timer?.cancel();
    _startTimer();
  }

  @override
  Widget build(BuildContext context) {
    int minutes = _remainingSeconds! ~/ 60;
    int seconds = _remainingSeconds! % 60;
    return Text(
      '$minutes:${seconds.toString().padLeft(2, '0')} restantes',
      style: const TextStyle(fontSize: 16),
    );
  }
}
