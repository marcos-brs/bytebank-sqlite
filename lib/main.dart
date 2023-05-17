import 'package:flutter/material.dart';

void main() {
  runApp(const BytebankApp());
}

class BytebankApp extends StatelessWidget {
  const BytebankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Dashboard'),
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/bytebank_logo.png'),
              ),
              Container(
                height: 120,
                width: 100,
                color: Colors.green,
                child: const Column(children: [
                  Icon(Icons.people),
                  Text('Contacts'),
                ]),
              )
            ],
          )),
    );
  }
}
