import 'package:flutter/material.dart';

void main() {
  runApp(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Counter(),
          ),
        ),
      ));
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(onPressed: _increment, child: const Text('Increment'),),
        const SizedBox(width: 16),
        Text('Count: $_counter')
      ]
    );
  }
}


