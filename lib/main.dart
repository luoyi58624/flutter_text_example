import 'package:flutter/material.dart';

import 'native_text.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Example'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'This Flutter Text Widget',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: NativeText('This Android Native Text'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
