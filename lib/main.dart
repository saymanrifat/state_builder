import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;

  int incrementValue() {
    counter += 1;
    return counter;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Builder'),
      ),
      body: SafeArea(child: Center(
        child: StatefulBuilder(
          builder: (context, buttonState) {
            return CupertinoButton(
                child: Text(
                  "$counter",
                  style: const TextStyle(
                      fontSize: 70,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  buttonState(() {
                    incrementValue();
                  });
                });
          },
        ),
      )),
    );
  }
}
